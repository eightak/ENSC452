#include "HW_clock.h"

int *sec_ptr = (int *)(GLOBAL_CLK_BASE + SEC_OFFSET);
int *min_ptr = (int *)(GLOBAL_CLK_BASE + MIN_OFFSET);
int *hr_ptr  = (int *)(GLOBAL_CLK_BASE + HR_OFFSET);

void set_clock(localTimeData ct) {

	u32 sec_pointer = sec_ptr;
	u32 min_pointer = min_ptr;
	u32 hour_pointer = hr_ptr;
	Xil_Out32(hour_pointer, (u32)ct.hour);
	Xil_Out32(min_pointer, (u32)ct.min);
	Xil_Out32(sec_pointer, (u32)ct.sec);
	Xil_Out32(sec_pointer, (u32)ct.sec);

}

localTimeData get_clock() {
	int hour = Xil_In32((u32)hr_ptr);
	int min = Xil_In32((u32)min_ptr);
	int second = Xil_In32((u32)sec_ptr);
	localTimeData getClk = {0, 1, 1, hour, min, second};

	//xil_printf("Current Time: %02d:%02d:%02d\n", getClk.hour, getClk.min, getClk.sec);

	return getClk;
}

int elapsed_time(localTimeData ct) {
	int elapsed = 0;

	int curr_sec = *sec_ptr;
	int curr_min = *min_ptr;
	int curr_hr  = *hr_ptr;

	if (ct.hour == curr_hr) {
		if (ct.min == curr_min) {
			elapsed = curr_sec - ct.sec;
		}
		else {
			elapsed = ((curr_min - ct.min) * 60 + curr_sec) - ct.sec;
		}
	}
	else {
		elapsed = (((curr_hr - ct.hour) * 3600) + ((curr_min - ct.min) * 60) + curr_sec) - ct.sec;
	}

	return elapsed;
}
