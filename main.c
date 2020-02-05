//
// Created by lzb on 12/20/19.
//
/*
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "uv.h"

int fib_(int n)
{
    if (n <= 2) return 1; // 递归结束条件
    return fib_(n - 1) + fib_(n - 2); // 递归，方法没变，规模变小了
}

void fib(uv_work_t *req) {
    int n = *(int *) req->data;
    if (random() % 2)
        sleep(1);
    else
        sleep(3);
    long fib = fib_(n);
    fprintf(stderr, "%dth fibonacci is %lu\n", n, fib);
}

void after_fib(uv_work_t *req, int status) {
    fprintf(stderr, "Done calculating %dth fibonacci\n", *(int *) req->data);
}

#define FIB_UNTIL 9
int main() {
    uv_loop_t* loop = uv_default_loop();

    int data[FIB_UNTIL];
    uv_work_t req[FIB_UNTIL];
    int i;
    for (i = 0; i < FIB_UNTIL; i++) {
        data[i] = i;
        req[i].data = (void *) &data[i];
        uv_queue_work(loop, &req[i], fib, after_fib);
    }

    return uv_run(loop, UV_RUN_DEFAULT);
}
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <uv.h>
#include <zconf.h>

#define DEFAULT_PORT 7000
#define DEFAULT_BACKLOG 128

uv_loop_t *loop;
struct sockaddr_in addr;

typedef struct {
    uv_write_t req;
    uv_buf_t buf;
} write_req_t;

void free_write_req(uv_write_t *req) {
    write_req_t *wr = (write_req_t*) req;
    free(wr->buf.base);
    free(wr);
}

void alloc_buffer(uv_handle_t *handle, size_t suggested_size, uv_buf_t *buf) {
    buf->base = (char*) malloc(suggested_size);
    buf->len = suggested_size;
}

void on_close(uv_handle_t* handle) {
    free(handle);
}

void echo_write(uv_write_t *req, int status) {
    if (status) {
        fprintf(stderr, "Write error %s\n", uv_strerror(status));
    }
    //free_write_req(req);
}

// Runs in a separate thread, can do blocking/time-consuming operations.
void on_work_submitted(uv_work_t* req) {
    // peer_state_t* peerstate = (peer_state_t*)req->data;
    sleep(1);
    // printf("work submitted: %d \n", 123);
//    if (isprime(peerstate->number)) {
//        set_peer_sendbuf(peerstate, "prime\n");
//    } else {
//        set_peer_sendbuf(peerstate, "composite\n");
//    }
}

void on_work_completed(uv_work_t* req, int status) {
    if (status) {
        printf("on_work_completed error: %s\n", uv_strerror(status));
    }
    // peer_state_t* peerstate = (peer_state_t*)req->data;
    // printf("work completed: %" PRIu64 "\n", peerstate->number);
    uv_write_t* writereq = (uv_write_t*)malloc(sizeof(*writereq));
    writereq->data = "peerstate";
    //printf("worker complete\n");
//    int rc;
//    if ((rc = uv_write(writereq, (uv_stream_t*)peerstate->client, &writebuf, 1,
//                       on_sent_response)) < 0) {
//        die("uv_write failed: %s", uv_strerror(rc));
//    }
     free(req);
}

void echo_read(uv_stream_t *client, ssize_t nread, const uv_buf_t *buf) {
    if (nread > 0) {
//        write_req_t *req = (write_req_t*) malloc(sizeof(write_req_t));
//        req->buf = uv_buf_init(buf->base, nread);
//        fwrite(buf->base, 30, 1, stdout);
//        uv_write((uv_write_t*) req, client, &req->buf, 1, echo_write);

        //
        uv_work_t* work_req = (uv_work_t*)malloc(sizeof(*work_req));
        work_req->data = "123";
        int rc;
        if ((rc = uv_queue_work(uv_default_loop(), work_req, on_work_submitted,
                                on_work_completed)) < 0) {
            printf("uv_queue_work failed: %s", uv_strerror(rc));
        }

        uv_work_t* work_req2 = (uv_work_t*)malloc(sizeof(*work_req));
        work_req->data = "123";
        if ((rc = uv_queue_work(uv_default_loop(), work_req2, on_work_submitted,
                                on_work_completed)) < 0) {
            printf("uv_queue_work failed: %s", uv_strerror(rc));
        }

        return;
    }
    if (nread < 0) {
        if (nread != UV_EOF)
            fprintf(stderr, "Read error %s\n", uv_err_name(nread));
        uv_close((uv_handle_t*) client, on_close);
    }

    // free(buf->base);
}

void on_new_connection(uv_stream_t *server, int status) {
    if (status < 0) {
        fprintf(stderr, "New connection error %s\n", uv_strerror(status));
        // error!
        return;
    }

    uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, client);
    if (uv_accept(server, (uv_stream_t*) client) == 0) {
        uv_read_start((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        uv_close((uv_handle_t*) client, on_close);
    }
}


int main() {
    loop = uv_default_loop();

    uv_tcp_t server;
    uv_tcp_init(loop, &server);

    uv_ip4_addr("0.0.0.0", DEFAULT_PORT, &addr);

    uv_tcp_bind(&server, (const struct sockaddr*)&addr, 0);
    int r = uv_listen((uv_stream_t*) &server, DEFAULT_BACKLOG, on_new_connection);
    if (r) {
        fprintf(stderr, "Listen error %s\n", uv_strerror(r));
        return 1;
    }
    return uv_run(loop, UV_RUN_DEFAULT);
}
