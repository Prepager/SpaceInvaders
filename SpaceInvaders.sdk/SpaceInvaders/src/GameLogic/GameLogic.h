#ifndef SRC_GAMELOGIC_GAMELOGIC_H_
#define SRC_GAMELOGIC_GAMELOGIC_H_

#include <stdlib.h>
#include "xil_types.h"
#include "../GameObject.h"
#include "../Scene/Scene.h"
#include "../Enemy/Enemy.h"
#include "../GameSettings.h"
#include "../Renderer/Renderer.h"

class GameLogic {
	public:
		GameLogic();
		int launch();
		void generateEnemies();

	protected:
		Renderer renderer;
};

#endif
