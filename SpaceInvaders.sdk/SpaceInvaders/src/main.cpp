// Import the game logic.
#include "GameLogic/GameLogic.h"
#include "Enemy/Enemy.h"

/**
 * Create game logic object and launch.
 */
int main()
{
	GameLogic *logic = new GameLogic();
	return logic->launch();
}
