///@desc Random bullet spray

var mutt_spray_inst, repeat_mutt;
repeat_mutt = 3

alarm[3] = 2

if transition_amount >= security_transition max_spray_b = 3

spray_b--

if spray_b <= 0 {
	if funnel = true repeat_mutt = 2

	repeat(repeat_mutt)
	{
	    mutt_spray_inst = instance_create(x - 43, y - 29, objEnemyBullet)
    
	    with(mutt_spray_inst)
	    {
	    angle = random_range(-45, 45)
	    damage = 1
	    spd = -3 * global.enemy_spd
	    image_angle = angle
	    }
	}
	
	spray_b = max_spray_b
}

if funnel = false exit;

with(objMiniCaravan) {
	var negative = sign(point_direction(x, y, 0, road_y_mid) - 180);
	globalvar funey_angle;
	funnel_angle += 0.075
		funey_angle = funnel_angle * sign(point_direction(x, y, 0, road_y_mid) - 180)
		
		if negative > 0 {
			if point_direction(x, y, objPlayer_x, objPlayer_y) - 180 < funey_angle {
				funey_angle = point_direction(x, y, objPlayer_x, objPlayer_y) - 180
			}
		} else {
			if point_direction(x, y, objPlayer_x, objPlayer_y) - 180 > funey_angle {
				funey_angle = point_direction(x, y, objPlayer_x, objPlayer_y) - 180
			}
		}
	
		var mini_funnel = instance_create(x, y, objEnemyBullet)
	
		with(mini_funnel) {
			damage = 1
			spd = -6 * global.enemy_spd
			angle = funey_angle
			image_angle = angle
		}
}

