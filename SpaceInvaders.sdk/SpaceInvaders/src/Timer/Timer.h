#ifndef SRC_TIMER_H_
#define SRC_TIMER_H_

#include "xtime_l.h"
#include "xscugic.h"
#include "xtmrctr.h"
#include "../audio/death.h"

/* TIMER */
// Define timer constants.
#define TMR_DEFAULT 2800 //9070 //907000000 //1000000
// Define device IDs.
#define TMR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
// Define interrupt controller ID.
#define INTC_DEVICE_ID 	XPAR_PS7_SCUGIC_0_DEVICE_ID
// Define device interrupt IDs.
#define INTC_TMR_ID 	XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

void timerHandler(void *InstancePtr, u8 timerIndex);
int initializeTimer();

#endif
