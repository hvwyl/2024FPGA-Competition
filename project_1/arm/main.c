#include "bsp.h"

size_t strlen(char *str)
{
    char *pos = str;
    while (*pos++);
    return (pos-str-1);
}

/* irq function  */
void irq_main(int irq_r0){
    uint8_t recv;
    while (!(UART0->rxfifo_empty))
    {
        recv = (uint8_t)UART0->fifo;
    }
    uart_send(UART0, (uint8_t *)"EI<", 3);
    uart_send(UART0, &recv, 1);
    uart_send(UART0, (uint8_t *)">QI", 3);
}

/* main function  */
void main()
{
    // int i;
    // char *str = "hello world! test";
    // while (1)
    // {
    //     uart_send(UART0, (uint8_t *)str, strlen(str));
    //     i = 10000000;
    //     while (i--)
    //     {
    //         __nop__();
    //     }
    // }
    *SDR_MOD_STATE = SDR_S3_FM_MODE;

    // *SDR_s0_arg_AM_fc = 0x0147ae14;
    // *SDR_s0_arg_AM_Depth = 0x0000b332;
    *SDR_s3_arg_FM_fc = 0x51eb851e;
    *SDR_s3_arg_FM_offset = 0x47;  

    // *SDR_s2_arg_SSB_fc = 0x090624dd;
    // *SDR_s2_arg_LU_MODE = 0;  
}
