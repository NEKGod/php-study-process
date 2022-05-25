cmake_minimum_required(VERSION 3.0)
project(study_socket C)

set(CMAKE_C_STANDARD 90)

add_executable(study_socket fork_process_socket/main.c)
add_executable(pool_process_socket_http pool_process_socket_http/main.c pool_process_socket_http/pool.h)
