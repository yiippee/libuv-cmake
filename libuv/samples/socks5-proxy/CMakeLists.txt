cmake_minimum_required(VERSION 3.15)
project(socks5_proxy C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(socks5_proxy
        client.c
        defs.h
        getopt.c
        main.c
        s5.c
        s5.h
        server.c
        util.c)
