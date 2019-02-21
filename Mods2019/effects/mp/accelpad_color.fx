effect effects/mp/accelpad_color
{
	size	154

	emitter "unnamed2"
	{
		duration	1,1
		count		16,16

		oriented
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/energy_sparks/energy1"

			start
			{
				position { point 1,0,0 }
				velocity { point 20,0,500 }
				size { point 70,70 }
				rotate { box 0,0,-1,0,0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { line 40,40,60,60 }
			}
		}
	}
}
