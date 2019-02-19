effect effects/mp/deadzone_chest
{
	size	93

	emitter "sparks"
	{
		duration	2,2
		count		50,50

		sprite
		{
			duration	0.5,0.5
			blend	add
			persist
			material	"gfx/effects/energy_sparks/spark_blue"
			gravity		-0.3,-0.3

			start
			{
				position { sphere -5,-5,-5,5,5,5 cone }
				size { line 5,5,10,10 }
				tint { point 1,0.501961,0 }
			}

			motion
			{
				fade { envelope "linear" }
				offset { envelope "linear" }
			}

			end
			{
				offset { box -20,-20,-20,20,20,20 }
			}
		}
	}
	emitter "haze"
	{
		duration	1,1
		count		0.002,0.002

		sprite
		{
			duration	0.5,0.5
			blend	add
			persist
			material	"gfx/effects/energy_sparks/energy1"

			start
			{
				position { sphere -5,-5,-5,5,5,5 }
				angle { box -0.0833333,-0.0833333,-0.0833333,0.0833333,0.0833333,0.0833333 }
				size { point 20,30 }
				tint { point 0.247059,0,0 }
				fade { point 0.5 }
			}

			motion
			{
				fade { envelope "linear" }
				offset { envelope "linear" }
				angle { envelope "linear" }
			}

			end
			{
				offset { box -30,-30,-30,30,30,30 }
			}
		}
	}
	emitter "haze2"
	{
		duration	1.5,1.5
		count		20,20
		locked

		sprite
		{
			duration	2,2
			blend	add
			persist
			material	"gfx/effects/energy_sparks/energy1"
			gravity		-0.03,-0.03

			start
			{
				size { line 20,20,30,30 }
				tint { point 1,0.501961,0.247059 }
				fade { point 0.5 attenuate }
				offset { box -10,-10,-10,10,10,10 }
				rotate { box -1,1 }
			}

			motion
			{
				fade { envelope "cosine" offset 0.5 }
				rotate { envelope "linear" }
			}

			end
			{
				fade { point 0 attenuate }
			}
		}
	}
}


