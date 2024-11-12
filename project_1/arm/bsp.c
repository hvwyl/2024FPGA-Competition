#include "bsp.h"

void uart_send(volatile uart_device *dev, uint8_t *data, size_t size)
{
    uint8_t *end = data + size;
    for (uint8_t *pos = data; pos != end; pos++)
    {
        while (dev->txfifo_full);
        dev->fifo = (uint32_t)*pos;
    }
}

void uart_recv(volatile uart_device *dev, uint8_t *data, size_t size)
{
    uint8_t *end = data + size;
    for (uint8_t *pos = data; pos != end; pos++)
    {
        while (dev->rxfifo_empty);
        *pos = (uint8_t)dev->fifo;
    }
}
