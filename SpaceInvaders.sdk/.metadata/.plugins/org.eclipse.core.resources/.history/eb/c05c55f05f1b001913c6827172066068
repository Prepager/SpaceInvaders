// Header
#include "Corner.h"

// Get the corner animation state.
u8* cornerImage(ShieldCorner *corner) {
	// Return the image at offset - health.
	return ShieldCornerImages[(corner->inverseX ? 6 : 3) - corner->health];
}

//
void depaintShieldCorner(ShieldCorner *corner, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (corner->xPos * 3) + (corner->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < SHIELD_CORNER_HEIGHT; ycoi++) {
		// Draw the background color.
		memset(&frame[addr], BACKGROUND, SHIELD_CORNER_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}

	// Disable depaint request.
	corner->depaint = 0;
}

//
void paintShieldCorner(ShieldCorner *corner, u8 *frame) {
	//
	if (corner->depaint) depaintShieldCorner(corner, frame);
	if (! corner->health) return;

	// Get the corner animation state.
	u8 *state = cornerImage(corner);

	// Generate the frame address for the starting position.
	int addr = (corner->xPos * 3) + (corner->yPos * STRIDE);

	// Loop through the height of the shield.
	for (int ycoi = 0; ycoi < SHIELD_CORNER_HEIGHT; ycoi++) {
		// Find offset based on inverse status.
		int offset = ycoi;
		if (corner->inverseY) {
			offset = SHIELD_CORNER_HEIGHT - (offset + 1);
		}

		// Copy corner image data into frame.
		memcpy(&frame[addr], &state[offset * SHIELD_CORNER_WIDTH * 3], SHIELD_CORNER_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}

// Check if bullet collides with shield corner.
Bullet* collidesShieldCorner(ShieldCorner *corner, Bullet *bullet) {
	// Skip check if already dead.
	if (! corner->health) {
		return bullet;
	}

	// Check if bullet collides with block.
	if (collidesBullet(bullet, corner->xPos, corner->yPos, SHIELD_CORNER_WIDTH, SHIELD_CORNER_HEIGHT)) {
		// Decrement corner health.
		corner->health--;

		// Delete the bullet and pointer.
		free(bullet);
		return NULL;
	}

	// Return the original pointer.
	return bullet;
}
