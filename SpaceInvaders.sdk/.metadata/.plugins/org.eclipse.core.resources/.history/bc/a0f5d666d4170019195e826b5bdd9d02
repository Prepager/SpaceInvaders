// Includes
#include "game.h"

// Buffer arrays.
u8 buffer[DISPLAY_NUM_FRAMES][MAX_FRAME];
u8 *bufferPointer[DISPLAY_NUM_FRAMES];

// Object arrays.
Player player;
Enemy enemies[ENEMY_ROWS*ENEMY_COLS];


// Create BTN gpio struct.
XGpio BTNGpio;

//
XTime enemyTimer;
XTime timeReader;

// todo
int drawBackground = 1;

/**
 * Initialize the game logic and display.
 */
int main()
{
	// Initialize the display.
	initializeDisplay();

	// Initialize the button XGPIO.
	XGpio_Initialize(&BTNGpio, GPIO_BTN_ID);
	XGpio_SetDataDirection(&BTNGpio, BTN_CHANNEL, 0xFF);

	// Initialize game objects.
	initializePlayer(&player);
	initializeEnemies(enemies);

	// Render the scene.
	while (1) renderScene();

	// Return out.
	return 0;
}

/**
 * Render the scene.
 */
void renderScene()
{
	// Get the current frame.
	u8 *frame = controller.framePtr[controller.curFrame];

	// Draw the background if needed.
	if (drawBackground) {
		// Draw the background.
		memset(&frame[0], BACKGROUND, sizeof(u8) * MAX_FRAME);

		// Disable background drawing.
		drawBackground = 0;
	}

	// Read in the current time.
	XTime_GetTime(&timeReader);

	// Check if should process enemies.
	if ((timeReader - enemyTimer) > ENEMY_SPEED) {
		// Position and paint enemies.
		depaintEnemies(enemies, frame);
		positionEnemies(enemies);
		paintEnemies(enemies, frame);

		// Save enemy drawn time.
		enemyTimer = timeReader;
	}

	// Read in the current button state.
	u8 input = XGpio_DiscreteRead(&BTNGpio, BTN_MASK);

	// Position and paint player.
	depaintPlayer(&player, frame);
	positionPlayer(&player, input);
	paintPlayer(&player, frame);

	// Flush the frame cache.
	Xil_DCacheFlushRange((unsigned int) frame, MAX_FRAME);
}
