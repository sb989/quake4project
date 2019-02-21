effect effects/weapons/napalmgun/areaburn
{
	size	146

	sound "sound"
	{
		soundShader	"lt_tank_flame_loop"
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
				tint { line 0,.8,.2,0,1,0.501961 }
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
	emitter "Flares"
	{
		duration	5,6
		count		8,16
		locked

		line
		{
			duration	0.6,1
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { box -1,-1,-1,1,1,1 }
				size { box 4,12 }
				tint { point 0,0.270588,0 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 16,0,0,20,0,0 useEndOrigin }
			}

			motion
			{
				fade { envelope "fast_in_slow_out" }
				length { envelope "linear" }
			}

			end
			{
				fade { point 1 }
				length { box 16,0,0,60,0,0 useEndOrigin }
			}
		}
	}
	spawner "BigFlash"
	{
		count		1,1

		sprite
		{
			duration	0.2,0.2
			blend	add
			material	"gfx/effects/weapons/flash"

			start
			{
				position { cylinder 0,-6,-6,0,6,6 }
				angle { box 0,0,0,1,1,1 }
				size { point 100,100 }
				tint { line 0,0.886275,0,0,0.941177,0 }
				fade { point 0.9 }
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
				size { line 15,15,20,20 }
				fade { point 0.2 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
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
}



