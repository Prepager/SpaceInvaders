// Header
#include "Timer.h"

// Globals
volatile int i = 0, j = 0, k = 0, l = 0;

// Externs
extern u8 kills, dead, ufo, pew;

// Instances.
XScuGic IntcInstance;
XTmrCtr TimerInstance;

// Initialize the interrupt timer.
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

// Handle the timer interrupts.
void timerHandler(void *InstancePtr, u8 timerIndex) {
	// Skip if no active sounds.
	if(! (kills || dead || ufo || pew)) return;

	// Create output buffer.
	unsigned long out[2] = {0, 0};

	// Handle kill sounds.
	if(kills) {
		if(i < DEATH_ELEMENTS) {
			out[0] += invaderKilled[i];
			out[1] += invaderKilled[i+1];
			i++;
		} else {
			i = 0;
			kills--;
		}
	}

	// Handle death sounds.
	if(dead) {
		if(j < EXPLOSION_LENGTH) {
			out[0] += explosion[j];
			out[1] += explosion[j+1];
			j++;
		} else {
			j = 0;
			dead--;
		}
	}

	// Handle UFO sounds.
	if(ufo) {
		if(k < UFOHIGHPITCH_LENGTH) {
			out[0] += (ufohighpitch[k] >> 2);
			out[1] += (ufohighpitch[k+1] >> 2);
			k++;
		} else {
			k = 0;
		}
	}

	// Handle bullet sounds.
	if(pew) {
		if(l < SHOT_LENGTH) {
			out[0] += shot[l];
			out[1] += shot[l+1];
			l++;
		} else {
			l = 0;
			pew--;
		}
	}

	// Output audio to device.
	outputAudio(out);

	// Convert instance pointer to timer controller.
	XTmrCtr* TimerPointer = (XTmrCtr*) InstancePtr;

	// Clear interrupt flag for timer controller.
	u32 CounterControlReg = XTmrCtr_ReadReg(TimerPointer->BaseAddress, timerIndex, XTC_TCSR_OFFSET);
	XTmrCtr_WriteReg(TimerPointer->BaseAddress, timerIndex,  XTC_TCSR_OFFSET, CounterControlReg | XTC_CSR_INT_OCCURED_MASK);
}
