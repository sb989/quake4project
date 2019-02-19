effect effects/weapons/napalmgun/flyburn
{
	size	59

	sound "sound"
	{
		soundShader	"lt_tank_flame_loop"
	}
	emitter "Fire1"
	{
		duration	3,3
		count		16,20

		sprite
		{
			duration	0.3,0.55
			blend	add
			persist
			material	"gfx/effects/fire/fire4a"
			gravity		-0.1,-0.1

			start
			{
				position { cylinder 0,-6,-6,0,6,6 }
				angle { box 0,0,0,1,1,1 }
				size { line 35,35,30,30 }
				tint { line 0,0.835294,0,0,.5,.2 }
				fade { point 0.8 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 25,25,20,20 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.194444,0.194444 relative }
			}
		}
	}
	sound "unnamed6"
	{
		soundShader	"effects_fire_small"
	}
	spawner "flash2"
	{
		count		1,1
		locked

		sprite
		{
			duration	2,2
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { line -2,-2,-2,2,2,2 }
				size { point 40,40 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "linear" }
			}
		}
	}
}



