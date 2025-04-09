/*
 * DATA_RECEPTION.H
 *
 * FSM for data reception from host PC via ethernet
 */

#ifndef __DATA_RECEPTION_H_
#define __DATA_RECEPTION_H_

#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xil_printf.h"

#include "DMMC/HW_clock.h" //for TimeStruct and set_clock()
#include "DMMC/display.h" //for weather struct
#include "DMMC/slideshow.h" //for slideshow images
#include "DMMC/home.h" //for home_screen()
#include "DMMC/shared_mem.h" //for ttsFlag_sharedMemory

#define BUF_SIZE   100
#define IMAGE_SIZE 1024*1280*4

int fsm_state;

char reception[BUF_SIZE];
char fsm1[BUF_SIZE];

extern int * ethernet_image_ptr;
extern uint8_t * ethernet_image_uint8;
int pixelsProcessed;

void receive_reception();

#endif
