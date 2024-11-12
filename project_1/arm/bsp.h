#ifndef _BSP_H
#define _BSP_H

#include "arch.h"

/* UART definitions */
typedef struct _uart_device {
    uint32_t fifo         : 32;
    uint32_t txfifo_full  : 16;
    uint32_t rxfifo_empty : 16;
} uart_device;

void uart_send(volatile uart_device *dev, uint8_t *data, size_t size);
void uart_recv(volatile uart_device *dev, uint8_t *data, size_t size);

#define UART0       ((volatile uart_device *)0x00004000)

/* SDR definitions */
#include "sdr.h"

#endif