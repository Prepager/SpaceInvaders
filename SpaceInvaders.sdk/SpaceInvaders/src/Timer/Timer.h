#ifndef SRC_TIMER_TIMER_H_
#define SRC_TIMER_TIMER_H_

// Includes
#include "xtime_l.h"
#include "xscugic.h"
#include "xtmrctr.h"
#include "../Audio/Audio.h"

// Resources
#include "Resources/shot.h"
#include "Resources/explosion.h"
#include "Resources/ufoHighpitch.h"
#include "Resources/invaderKilled.h"

// Defines
#define TMR_DEFAULT 95
#define TMR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define INTC_DEVICE_ID 	XPAR_PS7_SCUGIC_0_DEVICE_ID
#define INTC_TMR_ID 	XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

// Prototypes
int initializeTimer();
void timerHandler(void *InstancePtr, u8 timerIndex);

#endif
