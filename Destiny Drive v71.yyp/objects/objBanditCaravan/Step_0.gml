part_system_automatic_update(part_s_bck, true)
part_system_automatic_update(part_s_bck_2, true)

#region transition 
if hp <= ceil(max_hp * 0.6) and attack_choice = 0 { //transitioning to a different phase in the fight
	if transition_amount < 1 and !instance_exists(objCaravanSecurity) {
		create_if_exist(x - 12, y - sprite_height + 2, objCaravanSecurity)
		transition_timer = 90
		alarm[5] = 40
	}
}

	if transition_timer > 0 {
		part_particles_create(global.part_sys, x - 10, y - random_range(15, 25), sec_bot, 5)
	} else {
		if transition_amount > 0 {
			part_particles_create(part_s_bck, room_width + 10, road_y_min - random_range(15, 70), sec_bot_bck, 5)
			if random(1) < 0.5 part_particles_create(part_s_bck_2, room_width + 10, road_y_min - random_range(15, 70), sec_bot_bck_opp, 5)
		}
	}
#endregion

#region decor
wheel_angle -= 9

    y = pos_y + 24

if (attack_choice = 3 or attack_choice = 1 or attack_choice = 2 or attack_choice = 4 or attack_choice = 5) and attack_choice != 0 {
	if mouth_position > -16 mouth_position -= 1
} else {
	if mouth_position < 0 mouth_position += 1
}
#endregion

if alarm[11] <= 0 and transition_timer <= 0
{
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = room_speed * 10
    
	if transition_amount >= security_transition {
		attack_check(6)
	} else attack_check(4)
	
	if attack_choice = 2 {
		funnel = choose(true, false)
		if prac_param(0) = true funnel = false
		if prac_param(1) = true funnel = true
	}
	
	if attack_choice = 6 { alarm[0] = room_speed * 2; alarm[5] = 5 }
    }
    
    //Rotating shooty up and down
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //Crazy flack daaang
    if attack_choice = 2
    {
    //Handled in alarm, bud
    }
    else
    {
    alarm[3] = 20
    }
    
    //Shooty a bitty
    if attack_choice = 3
    {
    //nothin
    }
    else
    {
    alarm[4] = 15
    }
	
	//Blast
	if attack_choice = 4 {
	}
	else
	{
	alarm[6] = 30
	}
	
	//Aim at you
	if attack_choice = 5 {
	}
	else
	{
		alarm[7] = 30
	}
	
} else {
	var alarms = 1;
	repeat(10) {
		alarm[alarms] = 50
		alarms++
		
		wait = true
		attack_choice = 0
	}
}

