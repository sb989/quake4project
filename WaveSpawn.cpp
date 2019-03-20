
//#include "stdafx.h"
//#include "WaveSpawn.h"
#include "game/Entity.h"
#include "idlib/Dict.h"
#include "game/Entity.h"
#include "game/Game_local.h"
#include "game/gamesys/Class.h"
#include "WaveSpawn.h"
#pragma hdrstop
class WaveSpawn;
//const idEventDef EV_SpawnShit("spawn","");




//EVENT(EV_SpawnShit, WaveSpawn::wave1)
	//CLASS_DECLARATION(idEntity, WaveSpawn)
		//EVENT(EV_SpawnShit, WaveSpawn::wave1)
	//END_CLASS																	\
class WaveSpawn;

class WaveSpawn : public idEntity {
public:
	void Spawn(void);
	void wave1(void);
	int number;
	const char *location;
	const char *angle;
	const char *key, *value;
	idDict dict;
	idEntity *newEnt;
};
	void WaveSpawn::Spawn(void) {
		number = spawnArgs.GetInt("number", 0);
		location = spawnArgs.GetString("location", "0,0,0");
		value = spawnArgs.GetString("monster");
		angle = spawnArgs.GetString("angle", 0);
		dict.Set("classname", value);
		dict.Set("angle", angle);
		dict.Set("origin", location);
		newEnt = 0;
		for (int i = 0; i < number;i++) {
			//gameLocal.SpawnEntityDef(dict, &newEnt);
			gameLocal.Printf("yay%d", i);
		}
	}


	
