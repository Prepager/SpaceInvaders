// Header
#include "Bullet.h"

// Paint the bullet.
void paintBullet(Bullet *bullet, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (bullet->xPos * 3) + (bullet->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < BULLET_HEIGHT; ycoi++) {
		// Draw single white pixel.
		memset(&frame[addr], 255, BULLET_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}

// Depaint the bullet.
void depaintBullet(Bullet *bullet, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (bullet->xPos * 3) + (bullet->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < BULLET_HEIGHT; ycoi++) {
		// Draw the background color.
		memset(&frame[addr], BACKGROUND, BULLET_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}

// Position the bullet.
Bullet* positionBullet(Bullet *bullet, int speed) {
	// Change vertical position based on direction.
	if (bullet->direction) {
		bullet->yPos -= speed;
	} else {
		bullet->yPos += speed;
	}

	// Delete the bullet and pointer if has hit bounds.
	if (bullet->yPos < BULLET_MAX_TOP || bullet->yPos > BULLET_MAX_BOTTOM) {
		free(bullet);
		return NULL;
	}

	// Return the existing pointer.
	return bullet;
}

// Check collision for the bullet.
int collidesBullet(Bullet *bullet, u32 xPos, u32 yPos, int width, int height) {
	return (
		bullet->xPos < (xPos + width) &&
		bullet->yPos < (yPos + height) &&
		(bullet->xPos + BULLET_WIDTH) > xPos &&
		(bullet->yPos + BULLET_HEIGHT) > yPos
	);
}
