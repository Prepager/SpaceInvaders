#ifndef GAME_H_
#define GAME_H_

// Includes
#include "xtime_l.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "initializeDisplay.h"
#include "display_ctrl/display_ctrl.h"

#include "audio/audio.h"
#include "PS2/keyboard.h"
#include "SDCARD/SDcard.h"
// Settings
#include "settings.h"

// Game objects
#include "Enemy/Enemy.h"
#include "Shield/Shield.h"
#include "Player/Player.h"
#include "Health/Health.h"

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void paint();
void depaint();
void collides();
void position();
void initialize();

u8* getFrame();
int timePast(XTime timer, int time);

/* ------------------------------------------------------------ */

/************************************************************************/

#endif
