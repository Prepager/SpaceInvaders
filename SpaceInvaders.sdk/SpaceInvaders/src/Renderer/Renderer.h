#ifndef SRC_RENDERE_RENDERER_H_
#define SRC_RENDERE_RENDERER_H_

// Includes
#include "xil_types.h"
#include "xil_cache.h"
#include "../GameObject.h"
#include "../GameSettings.h"
#include "display_ctrl/display_ctrl.h"

// Hardware defines
#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID

class Renderer {
	public:
		Renderer();
		void render();
		int initialize();
		void addObject(GameObject *obj);

	protected:
		XAxiVdma vdma;
		DisplayCtrl controller;
		u8* currentFrame();
		int objectCount = 0;
		GameObject *objects[20/*55+1*/];
};

#endif
