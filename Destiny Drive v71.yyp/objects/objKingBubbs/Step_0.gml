#region transition
if hp <= ceil(max_hp * 0.6) and attack_choice = 0 { //transitioning to a different phase in the fight
	if transition_amount < 1 and sprite_index != sprKingBubbsAngry {
		sprite_index = sprKingBubbsAngry
		transition_timer = 90
	} 
}

	if sprite_index = sprKingBubbsAngry {
		if transition_amount >= 1 sprite_index = sprKingBubbs
		x = pos_x + random_range(1, -1)
	}	
#endregion

#region warning
	if player_too_close(warning_x, 90) {
		repeat(2)
	    {
	    var getouta = instance_create(320, y, objEnemyBullet)
        
	        with(getouta)
	        {
	        angle = random_range(-85, 85)
	        spd = -4 * global.enemy_spd
	        damage = 1
			sprite_index = sprKnightLaser
	        image_angle = angle
	        }
	    }
	}
#endregion

if alarm[11] <= 0 and transition_timer <= 0
{   
    //attack choosing
    if attack_choice = 0 and x < pos_x + 4 and wait = false
    {
    alarm[0] = room_speed * 10
    attack_check(6)
		
		#region
		switch(attack_choice) {
			case 1:
			alarm[0] = room_speed * 7.4
			break;
			case 4: //grapes
				if global.practice = false {
					if random(1) < 0.8 attack_choice = 0
				}
			break;
		}
		#endregion
		
    //attack_check()
    }
    
    //Flak Shot
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //Burp
    if attack_choice = 2
    {
	//burpin
    }
    else
    {
    alarm[3] = 12
    }
    
    //Knights
    if attack_choice = 3
    {
        if instance_exists(objKnight)
        {
        wait = true
        alarm[1] = 1
        attack_choice = 0
        }
    }
    else
    {
    alarm[4] = 15
    }
    
    //Grape dude
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 15
    }
    
    //bullet burp
    if attack_choice = 5
    {
		var puke_angle_variance = 20,
		    puke_speed_mult = 1;
		var repeat_amount = irandom_range(14, 20)
		
		if transition_amount >= angry_transition {
			repeat_amount = irandom_range(22, 25)
			puke_angle_variance = 30
			puke_speed_mult = 1.2
		}
		
        repeat(repeat_amount)
        {
            var boip_inst = instance_create(x - 18, y - 35, objEnemyBullet)
            
            with(boip_inst)
            {
            spd = random_range(3, 4) * puke_speed_mult
            damage = 1
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-puke_angle_variance, puke_angle_variance)
            
			sprite_index = sprKingBubbsPuke
			
            image_angle = angle
            }
        }
        
        wait = true
        alarm[1] = room_speed * 1.5
        attack_choice = 0
    }
	
	if attack_choice = 6
    {
		create_if_exist(360, -50, objKingBubbsWizard)
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

