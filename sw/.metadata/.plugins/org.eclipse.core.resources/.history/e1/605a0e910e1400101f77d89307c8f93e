#ifndef __HW_CLOCK_H_
#define __HW_CLOCK_H_

#include <stdio.h>
//#include <string.h>
#include "global_clk.h"
#include "xil_printf.h"

#include "xil_cache.h"
#include "xil_io.h"


#define GLOBAL_CLK_BASE XPAR_GLOBAL_CLK_0_S00_AXI_BASEADDR
#define SEC_OFFSET GLOBAL_CLK_S00_AXI_SLV_REG0_OFFSET
#define MIN_OFFSET GLOBAL_CLK_S00_AXI_SLV_REG1_OFFSET
#define HR_OFFSET GLOBAL_CLK_S00_AXI_SLV_REG2_OFFSET

extern int *sec_ptr;
extern int *min_ptr;
extern int *hr_ptr;

typedef struct {
	uint16_t year;
	uint8_t month;
	uint8_t day;
	uint8_t hour;
	uint8_t min;
	uint8_t sec;
} localTimeData;

localTimeData localTime;

void set_clock(localTimeData ct);

localTimeData get_clock();

int elapsed_time(localTimeData ct);

#endif
