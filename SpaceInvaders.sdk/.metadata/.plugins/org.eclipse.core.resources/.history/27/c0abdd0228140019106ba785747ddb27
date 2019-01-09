#include "GameLogic.h"

GameLogic::GameLogic() {
	// Create status variable.
	int status;

	// Create and initialize new rendering engine.
	this->renderer = new Renderer();
	xil_printf("Starting to initialize...\r\n");
	status = this->renderer->initialize();
	if (! status) {
		xil_printf("Failed to initialize renderer.\r\n");
		// todo: abort program
		return;
	}
}

void GameLogic::launch() {
	xil_printf("At launch\r\n");
	// Start game infinity loop.
	while (1) {
		// TODO: x
		this->renderer->render();
	}
}
