#ifdef RUNTIME
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <dlfcn.h>


/**
 * use macro to define witch so to load
 */
#ifdef UNOPTIMIZED
const char *sl = "./libseries.so" ;
#elif  OPTIMIZED
const char *sl = "./libseriesOptimized.so" ;
#endif

void *so_handle = NULL;
const long (*real_linear_sum)(int max) ;
const long (*real_square_sum)(int max) ;

/**
 * constructor to get pointer to real function
 */
void
__attribute__((constructor))
init()
{
    printf("loading wrapperred libseries.so\n");

    so_handle = dlopen(sl, RTLD_LAZY);
    if(!so_handle)
    {
        fprintf(stderr, "dlopen error: %s\n", dlerror());
        exit(1);
    }

    real_linear_sum = dlsym(so_handle, "linear_sum");
    if(!real_linear_sum)
    {
        fprintf(stderr, "dlsym error: %s\n", dlerror());
        exit(1);
    }

    real_square_sum = dlsym(so_handle, "square_sum");
    if(!real_square_sum)
    {
        fprintf(stderr, "dlsym error: %s\n", dlerror());
        exit(1);
    }

    printf("loaded wrapperred libseries.so\n");
}

/**
 * destructor to close so
 */
void
__attribute__((destructor))
cleanup()
{
    if(so_handle && dlclose(so_handle))
    {
        fprintf(stderr, "dlclose error: %s\n", dlerror());
        exit(1);
    }

    printf("unloaded wrapperred libseries.so\n");
}



long linear_sum(int max)
{
    struct timeval start, end;
    gettimeofday(&start, NULL);

    long result = real_linear_sum(max);

    gettimeofday(&end, NULL);
    long elapsed = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec);
    printf("linear_sum(%d) took %ld microseconds\n", max, elapsed);

    return result;
}

long square_sum(int max)
{
    struct timeval start, end;
    gettimeofday(&start, NULL);

    long result = real_square_sum(max);

    gettimeofday(&end, NULL);
    long elapsed = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec);
    printf("square_sum(%d) took %ld microseconds\n", max, elapsed);

    return result;
}



#endif