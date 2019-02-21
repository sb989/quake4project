effect effects/mp/waveline_192
{
	size	238

	emitter "wave"
	{
		duration	1,1
		count		3,3

		line
		{
			duration	0.8,0.8
			blend	add
			material	"gfx/effects/particles_shapes/waveline1"

			start
			{
				position { cylinder -65,-2,-2,-65,2,2 }
				size { box 2,9 }
				fade { point 0 }
				length { point 188,0,0 }
			}

			motion
			{
				fade { envelope "cosine" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	spawner "wave2"
	{
		count		3,3

		line
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/particles_shapes/waveline1b"

			start
			{
				position { cylinder -69,-2,-2,-69,2,2 }
				angle { point 0,0,0.0222222 }
				size { box 2,9 }
				fade { point 0 }
				length { point 185,0,0 }
			}

			motion
			{
				fade { envelope "cosine" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	emitter "solid"
	{
		duration	1,1
		count		5,5

		line
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/particles_shapes/add_line"

			start
			{
				position { point -71,0,0 }
				fade { point 0 }
				length { point 200,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
			}

			end
			{
				size { point 2 }
				fade { point 0.75 }
			}
		}
	}
	emitter "end1"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/energy_sparks/energy1_red"

			start
			{
				position { point -70,0,0 }
				velocity { point 20,0,0 }
				size { point 15,15 }
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
				size { point 5,5 }
				fade { point 1 }
				rotate { box -0.333333,0.333333 relative }
			}
		}
	}
	emitter "end2"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/energy_sparks/energy1_red"

			start
			{
				position { point 125,0,0 }
				velocity { point -20,0,0 }
				size { point 15,15 }
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
				size { point 5,5 }
				fade { point 1 }
				rotate { box -0.333333,0.333333 relative }
			}
		}
	}
	sound "sound"
	{
		soundShader	"ambient_light_pulse04"
		volume	0.2,0.2
	}
}
