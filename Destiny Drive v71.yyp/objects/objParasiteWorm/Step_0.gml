#region warning
warning_x = 165
    
    if attack_choice = 2
    {
    warning_x = 185
    }

    if player_too_close(warning_x, 90)
    {
        //sprite_index = sprParasiteWormAngryMouth
            var msnbc = instance_create(x - 22, y - 8, objAcidBullet)
        
            with(msnbc)
            {
            damage = 1
            angle = random(360)
            spd = -4 * global.enemy_spd
            sensitivity = 5
            image_angle = angle
            }
    }
    else
    {
    //sprite_index = sprParasiteWormMouth
    }
#endregion
	
#region transition
if hp <= ceil(max_hp * 0.6) and attack_choice = 0 { //transitioning to a different phase in the fight
	if transition_amount < 1 and sprite_index != sprParasiteSkeletonMouth {
		sprite_index = sprParasiteSkeletonMouth
		with(objParasiteWormBody) sprite_index = sprParasiteSkeletonBody
		transition_timer = 90
	} 
}
#endregion	

#region decor
    t += 3
    
	amp_lerp = lerp(amp_lerp, (0.00004066 * power(hp_sine - (hp - hp_sine) + hp_sine, 2)) + 3, 0.3)
	amp_lerp = clamp(amp_lerp, 0, 48)
	
    y = pos_y + (amp_lerp * sin(degtorad(t)))
#endregion

if alarm[11] <= 0 and transition_timer <= 0
{
	#region pos_x testing
	if x < pos_x
    {
        if point_distance(x, y, pos_x, pos_y) < 81
        {
            if spd > 0.1
            {
            spd -= 0.1
            }
        }
        
        x += spd
    }
    else
    {
        //if not doing the attack where it goes away
        x = pos_x
    }
	#endregion
	
	create_if_exist(0, 0, objParasiteSpawner)
	
	//attack choosing
    if attack_choice = 0 and x < pos_x + 2 and x > pos_x - 2 and wait = false
    {
    alarm[0] = room_speed * 10
		if transition_amount < 1 attack_check(3)
	    if transition_amount >= 1 attack_check(4)
		
		lasang = road_random()
		shot_las = false
		
		if attack_choice = 3 alarm[0] = room_speed * 4
		if attack_choice = 4 alarm[0] = room_speed * 4
    }
    
    //Acid Spray
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 10
    }
    
    //Howl
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //Flies
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 15
    }
    
    //Lasagna
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 60
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

