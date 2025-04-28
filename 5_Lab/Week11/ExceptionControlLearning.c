#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h> // ? dosen't work at Windows
#include <unistd.h>
#include <stdlib.h>
#include <time.h>

/**
 * params:
 * min - minimal seconds, max - maximal seconds
 * return:
 * a random integer value between min and max
 */
int random_int(int min, int max)
{
    return min  + rand() % (max - min + 1) ;
}

int main()
{
    pid_t pid[3] = {0} ;

    int is_parent = 0 ;

    if(pid[0] = fork())
    {
        if(pid[1] = fork())
        {
            if(pid[2] = fork()) 
                is_parent = 1 ;
        }
    }

    // Another implementation
    // for(int i = 0 ; i < 3 ; i ++)
    // {
    //     if(! (pid[i] = fork())) break;
        
    //     if(i == 3) is_parent = 1;
    // }

    if(!is_parent)
    {
        srand((unsigned int)time(NULL) ^ getpid());  // 结合进程ID使种子唯一
        // 不然很可能会出现相同的随机数
        int sleep_seconds = random_int(1, 9) ;
        sleep(sleep_seconds) ; // take param as seconds
        // usleep will take param as ms

        fprintf(stdout, "process %d sleeps for %d seconds !\n", 
                getpid(), sleep_seconds) ;

        exit(sleep_seconds) ;
    }

    for(int i = 0 ; i < 3 ; i ++)
    {
        int status ;
        if( waitpid(pid[i], &status, 0) )
            printf("parent process : subprocess %d has finished sleeping, which took %d seconds !\n" ,
                    pid[i], WEXITSTATUS(status)) ;
        else
            printf("parent process : subprocess %d doesn't awake normally !\n", pid[i]) ;
    }

    return 0;
}
