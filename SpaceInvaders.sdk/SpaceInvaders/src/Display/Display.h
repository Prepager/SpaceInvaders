#ifndef SRC_DISPLAY_H_
#define SRC_DISPLAY_H_

// Includes
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "display_ctrl/display_ctrl.h"

// Defines
#define MAX_FRAME 	(1920*1080*3)
#define STRIDE 		(1920 * 3)

#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID

// Prototypes
void initializeDisplay();

#endif
