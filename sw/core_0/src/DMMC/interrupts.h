/*
 * INTERRUPTS.H
 *
 * Sets up button and switch interrupts
 * features a sw implementation of the button debouncer using sleep
 * based on interrupts on the video and audio tutorial
 */

#ifndef INTERRUPTS_H_
#define INTERRUPTS_H_

#include <stdio.h>
#include "xil_types.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xil_printf.h"
#include <sleep.h>
#include "xiicps.h"
#include "xuartps.h"
#include "stdlib.h"
#include "xtmrctr.h"


#define INTC_DEVICE_ID		XPAR_PS7_SCUGIC_1_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BTN_INT		XGPIO_IR_CH1_MASK
#define SW_INT		XGPIO_IR_CH2_MASK
#define TMR_LOAD	0xF8000000


#define CENTRE_BUTTON 1
#define DOWN_BUTTON 2
#define LEFT_BUTTON 4
#define RIGHT_BUTTON 8
#define UP_BUTTON 16


XGpio BTNInst;
XGpio SWInst;
XScuGic INTCInst;
XTmrCtr TimerInstancePtr;

int btn_value;
int sw_value;
int sw0_bit;
int sw1_bit;
int sw2_bit;
int sw3_bit;
int sw4_bit;

int button_pressed_flag;
int prev_sw_value;
int prev_sw0;
int prev_sw1;
int prev_sw2;
int prev_sw3;
int prev_sw4;

int sw0_rising_edge;
int sw1_rising_edge;
int sw2_rising_edge;
int sw3_rising_edge;
int sw4_rising_edge;
int switch_falling_edge;

volatile int TIMER_INTR_FLG;
int tmr_count;

XScuGic InterruptController; /* Instance of the Interrupt Controller */
void Btn_InterruptHandler(void *InstancePtr);
void Timer_InterruptHandler(XTmrCtr *data, u8 TmrCtrNumber);
void Sw_InterruptHandler(void *InstancePtr);
int ScuGicInterrupt_Init(u16 DeviceId, XGpio *GpioInstancePtr);

#endif
