if alarm[11] <= 0
{
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
			laser_x = choose(0, room_width)
			laser_y = random_range(0, room_height)
			
		darkness_warmup = 2.25
		horror_angle = point_direction(x, y, objPlayer_x, objPlayer_y)
		strip = 0
		strip_dir = 1
		
	    alarm[0] = room_speed * 10
	    attack_check(4)
		
		if attack_choice = 1 burst = 2
    }
    
    //Darkness
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 60
	alarm[3] = 10
    }
    
    //Ghost
    if attack_choice = 2
    {
    }
    else
    {
    alarm[4] = 55
    }
    
    //flak
    if attack_choice = 3
    {
    }
    else
    {
	alarm[5] = 5
    }
    
    //Spook alien
    if attack_choice = 4
    {
    }
    else
    {
	alarm[6] = 10
    }
} else {
    var i;
    
    for(i = 1; i <= 10; i++) {
    alarm[i] = 50
    }
}

