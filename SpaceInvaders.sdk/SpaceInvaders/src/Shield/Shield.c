// Header
#include "Shield.h"

// Initialize and position shields.
void initializeShields(Shield *shields) {
	// Get the starting x position.
	u32 x = SHIELD_X_OFFSET - (SHIELD_WIDTH / 2);

	// Loop through the shields to be generated.
	for (int i = 0; i < SHIELD_COUNT; i++) {
		// Get the current shield pointer.
		Shield *shield = &shields[i];

		// Set positions.
		shield->xPos = x;
		shield->yPos = SHIELD_Y_OFFSET;

		// Increment the next x position.
		x += SHIELD_X_OFFSET * 2;

		// Initialize the new shield.
		initializeShield(shield);
	}
}

// Initialize the shield.
void initializeShield(Shield *shield) {
	// Allocate space for shield block and corners if needed.
	if (! shield->blocks) shield->blocks = malloc(sizeof(ShieldBlock) * SHIELD_BLOCK_COUNT);
	if (! shield->corners) shield->corners = malloc(sizeof(ShieldCorner) * SHIELD_CORNER_COUNT);

	// Position top-left corner.
	shield->corners[0].repaint = 1;
	shield->corners[0].inverseX = 1;
	shield->corners[0].inverseY = 1;
	shield->corners[0].xPos = shield->xPos;
	shield->corners[0].yPos = shield->yPos;
	shield->corners[0].health = SHIELD_CORNTER_HEALTH;

	// Position left blocks.
	shield->blocks[0].repaint = 1;
	shield->blocks[1].repaint = 1;
	shield->blocks[0].xPos = shield->xPos;
	shield->blocks[1].xPos = shield->xPos;
	shield->blocks[0].health = SHIELD_BLOCK_HEALTH;
	shield->blocks[1].health = SHIELD_BLOCK_HEALTH;
	shield->blocks[0].yPos = shield->yPos + SHIELD_CORNER_HEIGHT;
	shield->blocks[1].yPos = shield->yPos + SHIELD_CORNER_HEIGHT + SHIELD_BLOCK_HEIGHT;

	// Position inner-left corner.
	shield->corners[1].repaint = 1;
	shield->corners[1].inverseX = 0;
	shield->corners[1].inverseY = 0;
	shield->corners[1].health = SHIELD_CORNTER_HEALTH;
	shield->corners[1].xPos = shield->xPos + SHIELD_BLOCK_WIDTH;
	shield->corners[1].yPos = shield->yPos + SHIELD_BLOCK_HEIGHT;

	// Position center blocks.
	shield->blocks[2].repaint = 1;
	shield->blocks[3].repaint = 1;
	shield->blocks[2].yPos = shield->yPos;
	shield->blocks[3].yPos = shield->yPos;
	shield->blocks[2].health = SHIELD_BLOCK_HEALTH;
	shield->blocks[3].health = SHIELD_BLOCK_HEALTH;
	shield->blocks[2].xPos = shield->xPos + SHIELD_CORNER_WIDTH;
	shield->blocks[3].xPos = shield->xPos + SHIELD_CORNER_WIDTH + SHIELD_BLOCK_WIDTH;

	// Position inner-right corner.
	shield->corners[2].repaint = 1;
	shield->corners[2].inverseX = 1;
	shield->corners[2].inverseY = 0;
	shield->corners[2].health = SHIELD_CORNTER_HEALTH;
	shield->corners[2].yPos = shield->yPos + SHIELD_BLOCK_HEIGHT;
	shield->corners[2].xPos = shield->xPos + SHIELD_CORNER_WIDTH + SHIELD_BLOCK_WIDTH;

	// Position top-right corner.
	shield->corners[3].repaint = 1;
	shield->corners[3].inverseX = 0;
	shield->corners[3].inverseY = 1;
	shield->corners[3].yPos = shield->yPos;
	shield->corners[3].health = SHIELD_CORNTER_HEALTH;
	shield->corners[3].xPos = shield->xPos + SHIELD_CORNER_WIDTH + (SHIELD_BLOCK_WIDTH * 2);

	// Position left blocks.
	shield->blocks[4].repaint = 1;
	shield->blocks[5].repaint = 1;
	shield->blocks[4].health = SHIELD_BLOCK_HEALTH;
	shield->blocks[5].health = SHIELD_BLOCK_HEALTH;
	shield->blocks[4].yPos = shield->yPos + SHIELD_CORNER_HEIGHT;
	shield->blocks[5].yPos = shield->yPos + SHIELD_CORNER_HEIGHT + SHIELD_BLOCK_HEIGHT;
	shield->blocks[4].xPos = shield->xPos + SHIELD_CORNER_WIDTH + (SHIELD_BLOCK_WIDTH * 2);
	shield->blocks[5].xPos = shield->xPos + SHIELD_CORNER_WIDTH + (SHIELD_BLOCK_WIDTH * 2);
}

// Paint the shields.
void paintShields(Shield *shields, u8 *frame) {
	for (int i = 0; i < SHIELD_COUNT; i++) {
		paintShield(&shields[i], frame);
	}
}

// Paint the shield.
void paintShield(Shield *shield, u8 *frame) {
	//
	for (int i = 0; i < SHIELD_BLOCK_COUNT; i++) {
		paintShieldBlock(&shield->blocks[i], frame);
	}

	//
	for (int i = 0; i < SHIELD_CORNER_COUNT; i++) {
		paintShieldCorner(&shield->corners[i], frame);
	}
}

// Check collision between bullet and shields.
Bullet* collidesShields(Shield *shields, Bullet *bullet) {
	//
	for (int k = 0; k < SHIELD_COUNT; k++) {
		//
		for (int i = 0; i < SHIELD_BLOCK_COUNT; i++) {
			//
			bullet = collidesShieldBlock(&shields[k].blocks[i], bullet);

			//
			if (bullet == NULL) {
				//
				shields[k].blocks[i].depaint = 1;

				//
				return bullet;
			}
		}

		//
		for (int i = 0; i < SHIELD_CORNER_COUNT; i++) {
			//
			bullet = collidesShieldCorner(&shields[k].corners[i], bullet);

			//
			if (bullet == NULL) {
				//
				shields[k].corners[i].depaint = 1;

				//
				return bullet;
			}
		}
	}

	//
	return bullet;
}
