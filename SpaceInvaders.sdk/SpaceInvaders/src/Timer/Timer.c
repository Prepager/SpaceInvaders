#include "Timer.h"

volatile int i = 0, j = 0;
extern u8 deaths;

// Create device instances.
XScuGic IntcInstance;
XTmrCtr TimerInstance;
/*
 * u8 Sound determines the sound effect - MSB -> LSB
 *
 */

void timerHandler(void *InstancePtr, u8 timerIndex/*, u8 *death*/) {
	//xil_printf("Timer Interrupt!!%d\n", i);

	//if(death) {
	if(deaths){
		if(i < DEATH_ELEMENTS) {
				audio_stream(deathSound[i], DEATH_ELEMENTS, i);
				i++;
			} else {
				i = 0;
				deaths--;
			}
	}

	//}
//	j++;

	// Convert instance pointer to timer controller.
	XTmrCtr* TimerPointer = (XTmrCtr*) InstancePtr;

	// Clear interrupt flag for timer controller.
	u32 CounterControlReg = XTmrCtr_ReadReg(TimerPointer->BaseAddress, timerIndex, XTC_TCSR_OFFSET);
	XTmrCtr_WriteReg(TimerPointer->BaseAddress, timerIndex,  XTC_TCSR_OFFSET, CounterControlReg | XTC_CSR_INT_OCCURED_MASK);
}

int initializeTimer() {
	// Initialize Timer Device.
		int status = XTmrCtr_Initialize(&TimerInstance, TMR_DEVICE_ID);
		if(status != XST_SUCCESS) return XST_FAILURE;

		// Set timer handler and options.
		XTmrCtr_SetResetValue(&TimerInstance, 0, TMR_DEFAULT);
		XTmrCtr_SetHandler(&TimerInstance, timerHandler, &TimerInstance);
		XTmrCtr_SetOptions(&TimerInstance, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION | XTC_DOWN_COUNT_OPTION);

		// Create interrupt configuration.
		XScuGic_Config *IntcConfig;

		// Initialize interrupt controller.
		IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
		status = XScuGic_CfgInitialize(&IntcInstance, IntcConfig, IntcConfig->CpuBaseAddress);
		if(status != XST_SUCCESS) return XST_FAILURE;

		// Register and enable exception handler.
		Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, &IntcInstance);
		Xil_ExceptionEnable();

		// Connect timer interrupt handler.
		status = XScuGic_Connect(&IntcInstance, INTC_TMR_ID, (Xil_ExceptionHandler) XTmrCtr_InterruptHandler, (void *) &TimerInstance);
		if(status != XST_SUCCESS) return XST_FAILURE;
		XScuGic_Enable(&IntcInstance, INTC_TMR_ID);

		// Start the counter timer.
		XTmrCtr_Start(&TimerInstance, 0);
		return status;
}
