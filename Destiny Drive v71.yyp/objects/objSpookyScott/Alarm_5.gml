alarm[5] = 75

globalvar globalfade;
globalfade = 40

if transition_amount >= 1 {
	alarm[5] = 62
	globalfade = 30
}

var yposo = 0, nogo = irandom(11);

repeat(12)
{
	if yposo != nogo {
			//the plus four is because I said so!!!! (nice little offset to make it look better)
		var afainst = instance_create(x - 35, road_y_min + 4 + (yposo * 15), objFadeBullet)

		    with(afainst)
		    {
		    damage = 1
		    spd = -1.4 * global.enemy_spd
		    angle = 0
			
			alarm[0] = globalfade
			
			sprite_index = sprInvisibleBullet
		    }
	}
	yposo++
}

