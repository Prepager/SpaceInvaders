// Header
#include "Health.h"

// Initialize the health
void initializeHealth(Health *health, int *value) {
	// Set health defaults.
	health->health = value;
	health->drawnHealth = 0;

	// Set text defaults.
	health->text.text = "LIVES";
	health->text.yPos = (TOPBAR_HEIGHT - CHAR_TEXT_HEIGHT) / 2;
	health->text.xPos = DISPLAY_WIDTH - calculateTextWidth(&health->text);
}

// Paint the health.
void paintHealth(Health *health, u8 *frame) {
	// Skip rendering if past health value.
	if (*health->health == health->drawnHealth) return;

	// Depaint the health bar.
	depaintHealth(health, frame);

	// Set starting positions.
	u32 y = HEALTH_Y;
	u32 x = (HEALTH_X + HEALTH_WIDTH) - PLAYER_WIDTH - (HEALTH_SPACE * 2) - calculateTextWidth(&health->text);

	// Loop through the health.
	for (int i = 0; i < *health->health; i++) {
		// Generate the frame address for the starting position.
		int addr = (x * 3) + (y * STRIDE);

		// Loop through the height and set data.
		for (int ycoi = 0; ycoi < PLAYER_HEIGHT; ycoi++) {
			// Copy enemy image data into frame.
			memcpy(&frame[addr], &Ship[ycoi * PLAYER_WIDTH * 3], PLAYER_WIDTH * 3);

			// Jump to next line.
			addr += STRIDE;
		}

		// Add spacing between health indicators.
		x -= PLAYER_WIDTH + HEALTH_SPACE;
	}

	// Save drawn health.
	health->drawnHealth = *health->health;

	// Draw the lives text.
	paintText(&health->text, frame);
}

// Depaint the health.
void depaintHealth(Health *health, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (HEALTH_X * 3) + (0 * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < TOPBAR_HEIGHT; ycoi++) {
		// Draw the background color.
		memset(&frame[addr], BACKGROUND, HEALTH_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}
