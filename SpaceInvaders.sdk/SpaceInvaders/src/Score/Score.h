#ifndef SRC_SCORE_SCORE_H_
#define SRC_SCORE_SCORE_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"
#include "../Text/Text.h"

// Images
#include "Resources/Char0.h"
#include "Resources/Char1.h"
#include "Resources/Char2.h"
#include "Resources/Char3.h"
#include "Resources/Char4.h"
#include "Resources/Char5.h"
#include "Resources/Char6.h"
#include "Resources/Char7.h"
#include "Resources/Char8.h"
#include "Resources/Char9.h"

__attribute__ ((unused))
static u8 *CharImages[10] = {
	ScoreChar0,
	ScoreChar1,
	ScoreChar2,
	ScoreChar3,
	ScoreChar4,
	ScoreChar5,
	ScoreChar6,
	ScoreChar7,
	ScoreChar8,
	ScoreChar9
};

// Struct
typedef struct {
	// General
	int *score;
	int drawnScore;

	// Relations
	Text text;
} Score;

// Constructors
void paintScore(Score *score, u8 *frame);
void depaintScore(Score *score, u8 *frame);
void initializeScore(Score *score, int *value);

#endif
