/*
 * UART_FUNC.C
 *
 * Uart initializations and reception logic
 */

#include "uart_func.h"

int init_uart() {

	int xStatus;

	CntrlRegister = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_CR_OFFSET);

	XUartPs_WriteReg(UART_BASEADDR, XUARTPS_CR_OFFSET,
				  ((CntrlRegister & ~XUARTPS_CR_EN_DIS_MASK) |
				   XUARTPS_CR_TX_EN | XUARTPS_CR_RX_EN));

	myUartConfig = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
	xStatus = XUartPs_CfgInitialize(&myUart, myUartConfig, myUartConfig->BaseAddress);
	if(xStatus != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xStatus = XUartPs_SetBaudRate(&myUart, 115200);
	if(xStatus != XST_SUCCESS) {
		return XST_FAILURE;
	}

	reset_tempbuf();

	return 0;
}

void getUart() {

    receivedBytes = XUartPs_Recv(&myUart, messageIn, 100);

    if (receivedBytes > 0) {
        for (int i = 0; i < receivedBytes; i++) {
            tempbuf[i+idx] = messageIn[i];
            //xil_printf("R => %c\n", tempbuf[i+idx]);
        }
        idx += receivedBytes;

        if (messageIn[receivedBytes-1] == '\r') {
        	receiveMessage(tempbuf, idx);

        	tempbuf[idx-1] = '\0';
        	processingDone = 1;
        }
    }
}

void reset_tempbuf() {
	for (int i = 0; i < BUFFER_SIZE; i++) {
		tempbuf[i] = '\0';
	}
	idx = 0;
	processingDone = 0;
}
