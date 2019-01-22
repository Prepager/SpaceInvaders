#ifndef GAME_H_
#define GAME_H_

// Includes
#include "xtime_l.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "initializeDisplay.h"
#include "display_ctrl/display_ctrl.h"

#include "SDCARD/platform.h"
//#include "Timer/Timer.h"
#include "audio/audio.h"

// Settings
#include "settings.h"

// Game objects
#include "Menu/Menu.h"
#include "Bonus/Bonus.h"
#include "Enemy/Enemy.h"
#include "Score/Score.h"
#include "Shield/Shield.h"
#include "Player/Player.h"
#include "Health/Health.h"
#include "Keyboard/Keyboard.h"

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void paint();
void depaint();
void collides();
void position();
void initializeDevices();
void initializeObjects();

u8* getFrame();
int timePast(XTime timer, int time);

/* ------------------------------------------------------------ */

/************************************************************************/

#endif
