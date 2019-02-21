effect effects/mp/jumppad_trigger_color
{
	size	409

	spawner "unnamed1"
	{
		count		20,20

		sprite
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/energy_sparks/energy1_red"

			start
			{
				position { cylinder 0,-20,-10,20,20,10 }
				velocity { box 0,-10,-10,400,10,10 }
				angle { box 0,0,-1,0,0,1 }
				size { box 20,20,30,30 }
				fade { point 0 }
				offset { box 0,-10,-10,0,10,10 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "exp_x2" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	spawner "unnamed2"
	{
		count		5,5

		sprite
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/energy_sparks/energy1_red"

			start
			{
				velocity { box 0,0,0,250,0,0 }
				size { box 10,10,50,50 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
			}

			end
			{
				size { point 100,100 }
				fade { point 0.6 }
			}
		}
	}
	spawner "unnamed3"
	{
		count		4,4

		sprite
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/energy_sparks/energy2"

			start
			{
				velocity { box 0,0,0,250,0,0 }
				size { line 100,100,120,120 }
				tint { point 0.752941,0.752941,0.752941 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
			}

			end
			{
				size { line 200,200,250,250 }
				fade { point 0.4 }
			}
		}
	}
}
