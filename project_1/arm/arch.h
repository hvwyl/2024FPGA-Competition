#ifndef _ARCH_H
#define _ARCH_H

/* type definitions  */
typedef char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef unsigned int size_t;

/* NOP instruction implementation */
#define __nop__()   __asm__ volatile ("mov r0, r0\n")

/* xPSR mode0 primitive */
#define xPSR_MODE0(xPSR)  {\
    int xpsr;\
    __asm__ volatile (\
        "mrs %0, " #xPSR "\n"\
        "orr %0, #0x80\n"\
        "msr " #xPSR ", %0\n"\
        : "+r" (xpsr)\
    );\
}

/* xPSR mode1 primitive */
#define xPSR_MODE1(xPSR)  {\
    int xpsr;\
    __asm__ volatile (\
        "mrs %0, " #xPSR "\n"\
        "bic %0, #0x80\n"\
        "msr " #xPSR ", %0\n"\
        : "+r" (xpsr)\
    );\
}

#endif