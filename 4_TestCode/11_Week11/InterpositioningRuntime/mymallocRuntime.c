#ifdef RUNTIME
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

// 保存原始函数指针的全局变量
static void* (*real_malloc)(size_t size) = NULL;
static void (*real_free)(void* ptr) = NULL;

// 安全状态标志，防止递归调用
static int in_malloc = 0;
static int in_free = 0;

// 构造函数，在so库加载时执行
__attribute__((constructor))
static void init(void)
{
    real_malloc = dlsym(RTLD_NEXT, "malloc");
    real_free = dlsym(RTLD_NEXT, "free");
}

/* malloc wrapper function */
void *malloc(size_t size) 
{
    void *ptr;
    
    // 如果处于malloc中，或者还没有获取到real_malloc，直接调用系统函数
    if (in_malloc || !real_malloc) {
        // 通过RTLD_NEXT直接获取下一个malloc
        void *(*mallocp)(size_t size);
        mallocp = dlsym(RTLD_NEXT, "malloc");
        return mallocp(size);
    }
    
    // 设置状态防止递归
    in_malloc = 1;
    
    // 调用真实的malloc
    ptr = real_malloc(size);
    printf("malloc(%d) = %p\n", (int)size, ptr);
    
    // 重置状态
    in_malloc = 0;
    
    return ptr;
}

/* free wrapper function */
void free(void *ptr)
{
    if (!ptr) return;
    
    // 如果处于free中，或者还没有获取到real_free，直接调用系统函数
    if (in_free || !real_free) {
        void (*freep)(void *ptr);
        freep = dlsym(RTLD_NEXT, "free");
        freep(ptr);
        return;
    }
    
    // 设置状态防止递归
    in_free = 1;
    
    // 打印信息
    printf("free(%p)\n", ptr);
    
    // 调用真实的free
    real_free(ptr);
    
    // 重置状态
    in_free = 0;
}

#endif