// Header
#include "Block.h"

// Get the block animation state.
u8* blockImage(ShieldBlock *block) {
	// Return the image at offset + animation.
	return ShieldBlockImages[4 - block->health];
}

//
void paintShieldBlock(ShieldBlock *block, u8 *frame) {
	//
	if (block->depaint) depaintShieldBlock(block, frame);
	if (! block->health) return;

	// Get the block animation state.
	u8 *state = blockImage(block);

	// Generate the frame address for the starting position.
	int addr = (block->xPos * 3) + (block->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < SHIELD_BLOCK_HEIGHT; ycoi++) {
		// Copy enemy image data into frame.
		memcpy(&frame[addr], &state[ycoi * SHIELD_BLOCK_WIDTH * 3], SHIELD_BLOCK_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}

//
void depaintShieldBlock(ShieldBlock *block, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (block->xPos * 3) + (block->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < SHIELD_BLOCK_HEIGHT; ycoi++) {
		// Draw the background color.
		memset(&frame[addr], BACKGROUND, SHIELD_BLOCK_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}

	// Disable depaint request.
	block->depaint = 0;
}

// Check if bullet collides with shield block.
Bullet* collidesShieldBlock(ShieldBlock *block, Bullet *bullet) {
	// Skip check if already dead.
	if (! block->health) {
		return bullet;
	}

	// Check if bullet collides with block.
	if (collidesBullet(bullet, block->xPos, block->yPos, SHIELD_BLOCK_WIDTH, SHIELD_BLOCK_HEIGHT)) {
		// Decrement block health.
		block->health--;

		// Delete the bullet and pointer.
		free(bullet);
		return NULL;
	}

	// Return the original pointer.
	return bullet;
}
