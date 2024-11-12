#ifndef _SDR_H
#define _SDR_H

#include "arch.h"

typedef enum SDR_MOD_STATE {
    SDR_S0_AM_MODE      =   0   ,
    SDR_S1_DSB_MODE             ,
    SDR_S2_SSB_MODE             ,
    SDR_S3_FM_MODE              ,
    SDR_S4_PM_MODE              ,
    SDR_S5_ASK_MODE             ,
    SDR_S6_BFSK_MODE            ,
    SDR_S7_BPSK_MODE            ,
    SDR_S8_DPSK_MODE            ,
    SDR_S9_QPSK_MODE            ,
    SDR_S10_PDM_MODE            ,
    SDR_S11_PWM_MODE            ,
    SDR_S12_OFF_MODE            
} SDR_MOD_STATE;

typedef enum SDR_LU_MODE {
    SDR_LU_MODE_USB             ,
    SDR_LU_MODE_LSB
} SDR_LU_MODE;

#define SDR_MOD_STATE           ((volatile SDR_MOD_STATE *)0x00006000)
#define SDR_s0_arg_AM_fc        ((volatile uint32_t *)0x00006004)
#define SDR_s0_arg_AM_Depth     ((volatile uint32_t *)0x00006008)
#define SDR_s1_arg_DSB_fc       ((volatile uint32_t *)0x0000600C)
#define SDR_s2_arg_SSB_fc       ((volatile uint32_t *)0x00006010)
#define SDR_s2_arg_LU_MODE      ((volatile SDR_LU_MODE *)0x00006014)
#define SDR_s3_arg_FM_fc        ((volatile uint32_t *)0x00006018)
#define SDR_s3_arg_FM_offset    ((volatile uint32_t *)0x0000601C)
#define SDR_s4_arg_PM_fc        ((volatile uint32_t *)0x00006020)
#define SDR_s4_arg_PM_offset    ((volatile uint32_t *)0x00006024)
#define SDR_s5_arg_ASK_fc       ((volatile uint32_t *)0x00006028)
#define SDR_s5_arg_ASK_amp      ((volatile uint32_t *)0x0000602C)
#define SDR_s6_arg_BFSK_fc      ((volatile uint32_t *)0x00006030)
#define SDR_s6_arg_BFSK_range   ((volatile uint32_t *)0x00006034)
#define SDR_s7_arg_BPSK_fc      ((volatile uint32_t *)0x00006038)
#define SDR_s7_arg_BPSK_range   ((volatile uint32_t *)0x0000603C)
#define SDR_s8_arg_DPSK_fc      ((volatile uint32_t *)0x00006040)
#define SDR_s9_arg_QPSK_fc      ((volatile uint32_t *)0x00006044)

#endif