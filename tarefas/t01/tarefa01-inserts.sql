#include <unistd.h>
#include <stdio.h>
#include <pthread.h>

void* funcao_thread(void* arg)
{
    printf("\tNova thread\n");
    sleep(50);
    return NULL;
}

int main()
{
    pthread_t thread1, thread2;
    pthread_create(&thread1, NULL, &funcao_thread, NULL);
    pthread_create(&thread2, NULL, &funcao_thread, NULL);
    sleep(20);
    printf("Main finalizando\n");

    return 0;
}

