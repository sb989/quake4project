#pragma once
#ifndef __WAVE_SPAWN_H

#include "idlib/Dict.h"
#include "idlib/math/Vector.h"
#include "game/Player.h"
#include "game/gamesys/Class.h"
#include "idlib/containers/VectorSet.h"
#include "idlib/CmdArgs.h"
class WaveSpawn;

	class WaveSpawn : public idEntity {
		public:
			//CLASS_PROTOTYPE(WaveSpawn);
			void Spawn(void);
			//void Wave();
			int number;
			const char *location;
			const char *angle;
			const char *key, *value;
			idDict dict;
			idEntity *newEnt;
	};

#endif