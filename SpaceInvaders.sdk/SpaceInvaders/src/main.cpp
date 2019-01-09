/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include <stdio.h>
#include "xuartps.h"
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"

//
#include "GameLogic/GameLogic.h"

//
int main(void)
{
	//
	xil_printf("Starting game logic\r\n");
	GameLogic *logic = new GameLogic();
	logic->launch();
	xil_printf("Ending game logic\r\n");

	//
	return 0;
}
