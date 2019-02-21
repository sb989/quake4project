effect effects/weapons/napalmgun/globburn
{
	size	509

	sound "sound"
	{
		//soundShader	"lt_tank_flame_loop"
		soundShader "weapon_napalmgun_napalm_burn"
	}
	emitter "smoke"
	{
		duration	6,6
		count		2,2

		sprite
		{
			duration	2,2.5
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		-0.03,-0.01

			start
			{
				position { cylinder 0,-12,-12,30,12,12 }
				velocity { box -5,-5,-5,5,5,5 }
				size { line 20,20,40,40 }
				tint { point 0,0.752941,0 }
				fade { point 0 }
				rotate { box -0.111111,0 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				fade { point 0.5 }
				rotate { box -0.222222,-0.111111 relative }
			}
		}
	}
	emitter "Fire1"
	{
		duration	6,6
		count		4,8

		sprite
		{
			duration	0.3,1.5
			blend	add
			material	"gfx/effects/fire/fire4a"
			gravity		-0.02,-0.01

			start
			{
				position { cylinder 0,-6,-6,0,6,6 }
				angle { box 0,0,0,1,1,1 }
				size { line 20,20,25,25 }
				tint { line 1,1,1,1,1,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 25,25,40,40 }
				fade { point 0.6 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.194444,0.194444 relative }
			}
		}
	}
	sound "unnamed6"
	{
		soundShader	"effects_fire_small"
	}
	emitter "Flames2"
	{
		duration	6,6
		count		8,12

		sprite
		{
			duration	0.3,0.7
			blend	add
			persist
			material	"gfx/effects/fire/fire01"
			gravity		-0.15,-0.05

			start
			{
				position { line -6,-6,0,6,6,0 }
				size { line 22,22,34,34 }
				tint { point 0,0.568627,0 }
				rotate { box 0.375,0.402778 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "calredtable" }
			}

			end
			{
				size { line 10,10,16,16 }
			}
		}
	}
	spawner "glob"
	{
		count		1,1

		model
		{
			duration	6,6
			material	"models/weapons/napalmgun/flame_glob"
			model		"models/weapons/napalmgun/flame_gun_globsmall.ase"
		}
	}
	light "light"
	{

		light
		{
			duration	6,6
			blend	add
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { point 0,1,0 }
				size { point 50,50,503 }
				tint { point 0.921569,0.545098,0.321569 }
				fade { point 0.1 }
			}

			motion
			{
				size { envelope "exp_x2" count 1.5,1.5,1.5 offset -0.49,-0.49,-0.49 }
				tint { envelope "linear" count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}

			end
			{
				size { point 35,35,35 }
			}
		}
	}
}

