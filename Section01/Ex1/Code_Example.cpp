#include <pthread.h>

 int pthread_create(
              pthread_t *thread,
              const pthread_attr_t *attr,
              void *(*start_routine)(void*),
              void *arg
 )

 int pthread_join ( pthread_t *thread, void **retval )

 int pthread_exit ( void *retval )

 pthread_t pthread_self(void)
