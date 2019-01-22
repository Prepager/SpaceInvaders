#ifndef SRC_TEXT_TEXT_H_
#define SRC_TEXT_TEXT_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"

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

#include "Resources/CharA.h"
#include "Resources/CharB.h"
#include "Resources/CharC.h"
#include "Resources/CharD.h"
#include "Resources/CharE.h"
#include "Resources/CharF.h"
#include "Resources/CharG.h"
#include "Resources/CharH.h"
#include "Resources/CharI.h"
#include "Resources/CharJ.h"
#include "Resources/CharK.h"
#include "Resources/CharL.h"
#include "Resources/CharM.h"
#include "Resources/CharN.h"
#include "Resources/CharO.h"
#include "Resources/CharP.h"
#include "Resources/CharQ.h"
#include "Resources/CharR.h"
#include "Resources/CharS.h"
#include "Resources/CharT.h"
#include "Resources/CharU.h"
#include "Resources/CharV.h"
#include "Resources/CharW.h"
#include "Resources/CharX.h"
#include "Resources/CharY.h"
#include "Resources/CharZ.h"

__attribute__ ((unused))
static u8 *CharTextImages[10 + 26] = {
	TextChar0,
	TextChar1,
	TextChar2,
	TextChar3,
	TextChar4,
	TextChar5,
	TextChar6,
	TextChar7,
	TextChar8,
	TextChar9,

	TextCharA,
	TextCharB,
	TextCharC,
	TextCharD,
	TextCharE,
	TextCharF,
	TextCharG,
	TextCharH,
	TextCharI,
	TextCharJ,
	TextCharK,
	TextCharL,
	TextCharM,
	TextCharN,
	TextCharO,
	TextCharP,
	TextCharQ,
	TextCharR,
	TextCharS,
	TextCharT,
	TextCharU,
	TextCharV,
	TextCharW,
	TextCharX,
	TextCharY,
	TextCharZ
};

// Struct
typedef struct {
	// Position
	int xPos;
	int yPos;

	// General
	char *text;
} Text;

// Constructors
u8* textImage(char character);
int calculateTextWidth(Text *text);
void paintText(Text *text, u8 *frame);
void depaintText(Text *text, u8 *frame);

#endif
