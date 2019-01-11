#ifndef GAME_H_
#define GAME_H_

// Includes
#include "sleep.h"
#include "xtime_l.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "initializeDisplay.h"
#include "display_ctrl/display_ctrl.h"

// Settings
#include "settings.h"

// Game objects
#include "Enemy/Enemy.h"
#include "Player/Player.h"

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void initialize();
void renderScene();
//void positionEnemies();
int collides(Enemy *enemy, u32 x, u32 y);

/* ------------------------------------------------------------ */

/************************************************************************/

#endif
