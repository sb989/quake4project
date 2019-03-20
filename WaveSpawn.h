#pragma once
#ifndef __WAVE_SPAWN_H
#define __WAVE_SPAWN_H
#include "game/Entity.h"
#include "idlib/Dict.h"
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
#endif