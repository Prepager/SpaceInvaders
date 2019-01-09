#include "xil_types.h"

#include "../Renderer/Renderer.h"

#ifndef SRC_GAMELOGIC_GAMELOGIC_H_
#define SRC_GAMELOGIC_GAMELOGIC_H_

class GameLogic {
	public:
		GameLogic();
		void launch();

	private:
		Renderer *renderer;
};

#endif
