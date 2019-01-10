// Includes
#include "game.h"

// Buffer arrays.
u8 buffer[DISPLAY_NUM_FRAMES][MAX_FRAME];
u8 *bufferPointer[DISPLAY_NUM_FRAMES];

// Object arrays.
int enemyState = 0, enemyDirection = 1;
Enemy enemies[ENEMY_ROWS*ENEMY_COLS];

/**
 * Initialize the game logic and display.
 */
int main()
{
	// Initialize the display.
	initializeDisplay();

	// Render the scene.
	while (1) {
		renderScene();
	}

	// Return out.
	return 0;
}

/**
 * todo
 */
int collides(Enemy *enemy, u32 x, u32 y) {
	return (
		x >= enemy->xPos &&
		y >= enemy->yPos &&
		x <= enemy->xPos + enemy->width &&
		y <= enemy->yPos + enemy->height
	);
}

/**
 * Render the scene.
 */
void renderScene()
{
	// Get the current frame.
	u8 *frame = controller.framePtr[controller.curFrame];

	// Update the enemy positions.
	positionEnemies();

	// Loop through the x coordinates.
	for(int xcoi = 0; xcoi < (DISPLAY_WIDTH*3); xcoi += 3)
	{
		// Get the current address.
		int addr = xcoi;

		// Loop through the y coordinates.
		for(int ycoi = 0; ycoi < DISPLAY_HEIGHT; ycoi++)
		{
			// Draw the background scene. todo: only draw once.
			frame[addr + 0] = 0;	// Green
			frame[addr + 1] = 255;	// Blue
			frame[addr + 2] = 0;	// Red

			// Loop through the enemies.
			for (int i = 0; i < ENEMY_ROWS*ENEMY_COLS; i++) {
				// Load in the current enemy.
				Enemy *enemy = &enemies[i];

				// Draw enemy if collides with pixel.
				if (collides(enemy, xcoi/3, ycoi)) {
					frame[addr + 0] = 255;	// Green
					frame[addr + 1] = 255;	// Blue
					frame[addr + 2] = 255;	// Red
				}
			}

			// Jump to next line
			addr += STRIDE;
		}
	}

	// Flush the frame cache.
	Xil_DCacheFlushRange((unsigned int) frame, MAX_FRAME);
}

/**
 * todo
 */
void positionEnemies() {
	// Change offset based on state.
	int curOffset = ENEMY_X_OFFSET + (ENEMY_X_STATE_OFFSET * enemyState);

	// Change state based on direction.
	if (enemyDirection) {
		enemyState++;
	} else {
		enemyState--;
	}

	// Change directions on bounds.
	if (enemyState <= -ENEMY_X_STATES || enemyState >= ENEMY_X_STATES) {
		enemyDirection = ! enemyDirection;
	}

	// Define starting x and y positions.
	u32 x = curOffset, y = ENEMY_Y_OFFSET;

	// Loop through enemies.
	for (int i = 0; i < ENEMY_ROWS*ENEMY_COLS; i++) {
		// Set new positions.
		enemies[i].xPos = x;
		enemies[i].yPos = y;

		// Set new sizes.
		enemies[i].width = ENEMY_SIZE;
		enemies[i].height = ENEMY_SIZE;

		// Increment x with spacing.
		x += ENEMY_SIZE + ENEMY_SPACE;

		// Increment y and reset x.
		if ((i+1) % 11 == 0) {
			x = curOffset;
			y += ENEMY_SIZE + ENEMY_SPACE;
		}
	}
}

