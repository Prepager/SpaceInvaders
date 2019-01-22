// Header
#include "Score.h"

// Initialize the score.
void initializeScore(Score *score, int *value) {
	// Set score defaults.
	score->score = value;
	score->drawnScore = -1;

	// Set text defaults.
	score->text.text = "SCORE";

	score->text.xPos = 0;
	score->text.yPos = (TOPBAR_HEIGHT - CHAR_TEXT_HEIGHT) / 2;
}

// Paint the score.
void paintScore(Score *score, u8 *frame) {
	// Skip rendering if score already drawn.
	if (*score->score == score->drawnScore) return;

	// Depaint the score area.
	depaintScore(score, frame);

	// Set starting positions.
	u32 y = SCORE_Y, x = SCORE_X + calculateTextWidth(&score->text);

	// Create copy of score.
	int localScore = *score->score;

	// Do while local score is not 0.
	int charCount = 0;
	do {
	     // Increment char counter.
		charCount++;

		// Divide with base 10.
		localScore /= 10;
	} while (localScore);

	// Add spacing for x position.
	x += (CHAR_WIDTH + CHAR_SPACE) * (charCount - 1);

	// Re-copy score to local variable.
	localScore = *score->score;

	// Loop through the score chars.
	for (int i = 0; i < charCount; i++) {
		// Get digit from integer.
		int value = localScore % 10;
		localScore /= 10;

		// Generate the frame address for the starting position.
		int addr = (x * 3) + (y * STRIDE);

		// Loop through the height and set data.
		for (int ycoi = 0; ycoi < CHAR_HEIGHT; ycoi++) {
			// Copy enemy image data into frame.
			memcpy(
				&frame[addr],
				&CharImages[value][ycoi * CHAR_WIDTH * 3],
				CHAR_WIDTH * 3
			);

			// Jump to next line.
			addr += STRIDE;
		}

		// Add spacing between health indicators.
		x -= CHAR_WIDTH + CHAR_SPACE;
	}

	// Save drawn score.
	score->drawnScore = *score->score;

	// Draw the score text.
	paintText(&score->text, frame);
}

// Depaint the score.
void depaintScore(Score *score, u8 *frame) {
	// Generate the frame address for the starting position.
	int addr = (SCORE_X * 3) + (0 * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < TOPBAR_HEIGHT; ycoi++) {
		// Draw the background color.
		memset(&frame[addr], BACKGROUND, SCORE_WIDTH * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}
