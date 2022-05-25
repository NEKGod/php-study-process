//
// Created by ASUS on 2022/5/25.
//

#include <stdio.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netinet/ip.h> /* superset of previous */
#include <arpa/inet.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <wait.h>

#define LISTENNUMBER 1024

void socket_error()
{
    printf("socket errno=%d, msg=%s", errno, strerror(errno));
    exit(0);
}

void signal_handler(int signo)
{
    if (SIGCHLD == signo) {
        printf("回收子进程");
        wait(NULL);
    }
}

int main() {
    struct sigaction act;
    act.sa_handler = signal_handler;
    act.sa_flags=SA_RESTART;
    sigemptyset(&act.sa_mask);
    if(sigaction(SIGCHLD,&act,NULL)){
        printf("信号注册失败\r\n");
    }
    printf("pid = %d\r\n", getpid());
    int server_socket = socket(AF_INET, SOCK_STREAM, 0);
    struct sockaddr_in server_addr = {
            AF_INET,
            htons(9501),
            inet_addr("0.0.0.0")
    }, client_addr;
    int report = 1;
    if(setsockopt(server_socket,SOL_SOCKET,SO_REUSEPORT,&report,sizeof(report))!=0){
        printf("设置socket选项失败\r\n");
    }
    if (bind(server_socket, (struct sockaddr *) &server_addr, sizeof(server_addr)) == -1) {
        socket_error();
    }
    if (listen(server_socket, LISTENNUMBER) == -1) {
        socket_error();
    }
    char msg[1024] = {0};
    ssize_t ret;
    while (1) {
        socklen_t client_len = sizeof(client_addr);
        int client_socket = accept(server_socket, (struct sockaddr *) &client_addr, &client_len);
        if (client_socket == -1) {
            socket_error();
        }
        pid_t pid = fork();
        if (pid == 0) {
            printf("child pid=%d, recvfd=%d", getpid(), client_socket);
            while ((ret = recv(client_socket, msg, sizeof(msg), 0)) > 0) {
                printf("ret=%ld, msg = %s, size=%lu\r\n", ret, msg, strlen(msg));
            }
            memset(msg, 0, sizeof(msg));
            printf("客户端链接成功 %d\r\n", client_socket);
            close(client_socket);
            exit(0);
        }
    }
    return 0;
}
