// Header
#include "Menu.h"

// Initialize the menu.
void initializeMenu(Menu *menu, Player *player) {
	// Set relations.
	menu->player = player;

	// Set game over text defaults.
	menu->gameOver.length = 9;
	menu->gameOver.text = "GAME OVER";
	menu->gameOver.yPos = 180;
	menu->gameOver.xPos = (DISPLAY_WIDTH / 2) - (calculateTextWidth(&menu->gameOver) / 2);

	// Set instructions text defaults.
	menu->pressKey.length = 23;
	menu->pressKey.text = "PRESS SPACE TO CONTINUE";
	menu->pressKey.yPos = DISPLAY_HEIGHT - (CHAR_TEXT_HEIGHT * 2);
	menu->pressKey.xPos = (DISPLAY_WIDTH / 2) - (calculateTextWidth(&menu->pressKey) / 2);
}

// Paint the menu.
void paintMenu(Menu *menu, u8 *frame) {
	// Loop through the display height.
	for (int ycoi = 0; ycoi < DISPLAY_HEIGHT; ycoi++) {
		// Check if inside logo bounds.
		if (ycoi > MENU_LOGO_Y && ycoi < (MENU_LOGO_Y + MENU_LOGO_HEIGHT)) {
			// Copy logo image into frame.
			memcpy(
				&frame[(ycoi * STRIDE) + (MENU_LOGO_X * 3)],
				&Logo[(ycoi - MENU_LOGO_Y) * MENU_LOGO_WIDTH * 3],
				MENU_LOGO_WIDTH * 3
			);
		}

		// Check if inside stripe bounds.
		if (ycoi <= DISPLAY_HEIGHT - (CHAR_TEXT_HEIGHT * 3)) {
			// Left stripe
			frame[(ycoi * STRIDE) + (MENU_OFFSET * 3) + 0] = 255;
			frame[(ycoi * STRIDE) + (MENU_OFFSET * 3) + 1] = 0;
			frame[(ycoi * STRIDE) + (MENU_OFFSET * 3) + 2] = 0;

			// Right stripe
			frame[(ycoi * STRIDE) + ((DISPLAY_WIDTH - MENU_OFFSET) * 3) + 0] = 255;
			frame[(ycoi * STRIDE) + ((DISPLAY_WIDTH - MENU_OFFSET) * 3) + 1] = 0;
			frame[(ycoi * STRIDE) + ((DISPLAY_WIDTH - MENU_OFFSET) * 3) + 2] = 0;
		}
	}

	// todo: paint highscores.

	// Paint the game over text.
	paintText(&menu->gameOver, frame);

	// Paint the instructions text.
	paintText(&menu->pressKey, frame);
}
