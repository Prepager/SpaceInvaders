// Header
#include "Text.h"

// Paint the text string.
void paintText(Text *text, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (text->xPos * 3) + (text->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < CHAR_TEXT_HEIGHT; ycoi++) {
		// Loop through all the chars.
		int offset = 0;
		for (int i = 0; i < text->length; i++) {
			// Find image for current char.
			char character = text->text[i];
			int charIndex = character - 65;
			u8 * charImage = CharTextImages[charIndex];

			// Copy current char image to row.
			if (character != ' ') {
				memcpy(
					&frame[offset + addr],
					&charImage[ycoi * CHAR_TEXT_WIDTH * 3],
					CHAR_TEXT_WIDTH * 3
				);
			}

			// Add offset based on char width.
			offset += (CHAR_TEXT_WIDTH * 3);
		}

		// Jump to next line.
		addr += STRIDE;
	}
}

// Depaint the text string.
void depaintText(Text *text, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (text->xPos * 3) + (text->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < CHAR_TEXT_HEIGHT; ycoi++) {
		// Draw the background color for the calculated width.
		memset(&frame[addr], BACKGROUND, calculateTextWidth(text) * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}

// Calculate the width for the text.
int calculateTextWidth(Text *text) {
	return text->length * CHAR_TEXT_WIDTH;
}
