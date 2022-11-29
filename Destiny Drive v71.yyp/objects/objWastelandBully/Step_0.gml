if spawn = true {
	pos_x = 230
	spawn = false
}

	y = ystart + sin(degtorad(t)) * 4
	depth = -100
	
if alarm[11] <= 0 and sprite_index != sprWastelandBullyDead
{
    t += 4
    
    if player_too_close(warning_x, 30) {
	warning_timer = 5
		
        var lies = instance_create(x, y, objEnemyBullet)
    
	    with(lies)
	    {
	    angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	    spd = 6 * global.enemy_spd
	    damage = 2
    
	    image_angle = angle
	    }
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = room_speed * 10
    attack_check(4)
    }
    
    //Inaccurate Shots
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 14
    }
    
    //Swing Chain
    if attack_choice = 2
    {
        if sprite_index = sprWastelandBully
        {
        image_index = 0
        image_speed = 0.4
        sprite_index = sprWastelandBullySwingBack
        }
    }
    else
    {
        if angry = false
        {
        alarm[3] = room_speed * 1.6
        }
        else
        {
        alarm[3] = room_speed * 1.2
        }
    }
    
    //Potion Drink
    if attack_choice = 3
    {
        if angry = false
        {
        image_speed = 0.02
        sprite_index = sprWastelandBullyPotionDrink
		alarm[4] = room_speed * 25
        }
        else
        {
        attack_choice = irandom_range(1, 4)
        }
    }
    else
    {
    alarm[4] = 15
    }
    
    //Whistle
    if attack_choice = 4
    {
        if !instance_exists(objParentWeak)
        {
        image_speed = 0.02
        sprite_index = sprWastelandBullyWhistle
        }
        else
        {
        attack_choice = irandom_range(1, 4)
        }
    }
}
else //setting alarm for if attack is done
{
alarm[2] = 14
alarm[3] = room_speed * 1.6
}

