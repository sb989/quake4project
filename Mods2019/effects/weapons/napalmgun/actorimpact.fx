effect effects/weapons/napalmgun/actorimpact
{
	size	174

	spawner "BigFlash"
	{
		count		2,2

		sprite
		{
			duration	0.2,0.2
			blend	add
			material	"gfx/effects/weapons/flash"

			start
			{
				position { cylinder 0,-6,-6,0,6,6 }
				angle { box 0,0,0,1,1,1 }
				size { point 120,120 }
				tint { line 0.886275,0.886275,0.886275,0.941177,0.941177,0.941177 }
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
	spawner "quickflares"
	{
		count		8,16
		locked

		line
		{
			duration	0.25,0.5
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { sphere -1,-1,-1,1,1,1 surface }
				size { box 25,50 }
				tint { point 0.462745,0.447059,0.760784 }
				fade { point 0 }
				offset { box -3,0,0,-3,0,30 }
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
}

