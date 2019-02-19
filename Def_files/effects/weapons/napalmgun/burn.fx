effect effects/weapons/napalmgun/burn
{
	size	84

	emitter "OrangeFlares"
	{
		start		0.1,0.25
		duration	0.25,0.5
		count		6,10
		locked

		line
		{
			duration	0.2,0.6
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { cylinder -1,-1,-1,1,1,1 surface }
				size { box 3,6 }
				tint { point 0,0.760784,0 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 8,0,0,12,0,0 }
			}

			motion
			{
				fade { envelope "fast_in_slow_out" }
				length { envelope "linear" }
			}

			end
			{
				fade { point 0.95 }
				length { box 10,-10,-10,15,10,10 }
			}
		}
	}
	emitter "SpArks"
	{
		start		0.2,0.4
		duration	0.5,1.5
		count		1,3

		sprite
		{
			duration	0.4,1.5
			blend	add
			persist
			material	"gfx/effects/weapons/flash"
			gravity		-0.14,-0.04

			start
			{
				position { sphere -7,-7,-7,7,7,7 }
				angle { point 0.138889,0.138889,0.138889 }
				size { line 1,1,2,2 }
				tint { point 0,0.737255,0.52549 }
				offset { box -1,-3,6,3,3,12 }
				rotate { point 0.375 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "scaletable" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { point 0 relative }
			}
		}
	}
	emitter "Flames1"
	{
		duration	1,1
		count		3,5

		sprite
		{
			duration	0.2,0.5
			blend	add
			persist
			material	"gfx/effects/fire/fire01"
			gravity		-0.325,-0.135

			start
			{
				position { line -5,-4,-3,5,4,3 }
				size { line 15,15,25,27 }
				rotate { box 0.375,0.402778 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "calredtable" }
			}

			end
			{
				size { line 5,5,8,10 }
			}
		}
	}
	emitter "Flames2"
	{
		duration	1,1
		count		3,5

		sprite
		{
			duration	0.1,0.4
			blend	add
			persist
			material	"gfx/effects/fire/fire02"
			gravity		-0.325,-0.135

			start
			{
				position { line -5,-5,5,5,5,5 }
				size { line 15,15,25,27 }
				rotate { box 0.375,0.402778 }
			}

			
			{
				size { envelope "linear" }
				fade { envelope "calredtable" }
			}

			end
			{
				size { line 5,5,9,11 }
			}
		}
	}
}



















