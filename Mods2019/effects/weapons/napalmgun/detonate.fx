effect effects/weapons/napalmgun/detonate
{
	size	163

	sound "sound3"
	{
		soundShader	"weapon_napalmgun_subexplode"
	}
	spawner "darksmoke"
	{
		detail		0.5
		start		0.2,0.2
		count		3,3

		sprite
		{
			duration	0.8,1.6
			material	"gfx/effects/smoke/smoke_dark"
			gravity		-0.04,-0.04

			start
			{
				position { sphere -24,-24,-24,24,24,24 }
				velocity { box -10,-10,-10,10,10,10 }
				size { line 30,30,45,45 }
				tint { point 0,0.521569,0 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 50,50,81,81 }
				fade { point 0.3 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "sparks"
	{
		detail		0.5
		start		0.3,0.3
		count		15,15

		sprite
		{
			duration	0.5,1
			blend	add
			material	"gfx/effects/energy_sparks/spark3"
			gravity		-0.03,-0.01

			start
			{
				position { sphere -60,-60,-60,60,60,60 }
				velocity { box -50,-50,-50,50,50,50 }
				angle { box 0,0,0,0.277778,0.277778,0.277778 }
				size { line 0.5,0.5,3,3 }
				tint { line 0,0.721569,0.309804,0,.7,.2 }
				offset { box -6,-6,-6,6,6,6 }
			}

			motion
			{
				fade { envelope "linear_flicker" }
				angle { envelope "linear" }
			}

			end
			{
				angle { box 0.277778,0.277778,0.277778,0.555556,0.555556,0.555556 relative }
			}
		}
	}
	emitter "Firecore"
	{
		duration	0.34,0.34
		count		12,16

		sprite
		{
			duration	0.4,0.75
			blend	add
			material	"gfx/effects/fire/fire2a"
			gravity		-0.2,-0.01

			start
			{
				position { sphere -20,-20,-20,0,20,20 }
				angle { box 0,0,0,1,1,1 }
				size { line 20,20,25,25 }
				tint { line 0,.5,.3,0,0.92549,0.85098 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 25,25,40,40 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.194444,0.194444 relative }
			}
		}
	}
	emitter "Flames"
	{
		duration	0.5,0.5
		count		25,30

		sprite
		{
			duration	0.35,0.5
			blend	add
			persist
			material	"gfx/effects/fire/fire01"
			gravity		-0.4,-0.2

			start
			{
				position { sphere -24,-24,-12,24,24,12 }
				size { line 35,35,50,50 }
				tint { point 0,0.564706,0 }
				fade { point 0.1 }
				rotate { box 0.375,0.402778 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
			}

			end
			{
				size { line 15,15,20,20 }
				fade { point 1 }
			}
		}
	}
}



















