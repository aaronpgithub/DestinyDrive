if alarm[11] <= 0
{
    if player_too_close(warning_x, 15)
    {
		warning_timer = 5
		
		var inst = instance_create(x - 32, y, objTheMutantTankShot)

	    with(inst)
	    {
	    angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	    spd = 6 * global.enemy_spd
	    image_angle = angle
	    }
    }

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = room_speed * 10
    attack_check(4)
	
	if attack_choice = 2 alarm[0] = room_speed * 4.5
	if attack_choice = 4 alarm[0] = room_speed * 2
    }
    
    //Smart Bomb
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 5
    }
    
    //Laser
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 55
    }
    
    //Tank Shot
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
	
	//Blast
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 30
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

/* */
/*  */
