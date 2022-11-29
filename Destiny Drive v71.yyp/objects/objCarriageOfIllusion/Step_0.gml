
event_inherited()

//add an attack for ya boy attack_choice = 2 on phase 2

#region transition
	if attack_choice = 0 {
		if hp <= ceil(max_hp * 0.4) { //transitioning to a different phase in the fight
			if transition_amount < 1 and transition_done = true {
				transition_timer = 90
			} 
		}
	}
#endregion

if transition_amount < 1 {
	alarm[6] = 20
	alarm[7] = 20
}

//If the boss is to the starting point
if alarm[11] <= 0 and transition_timer <= 0
{
	half_y = road_y_mid + point_distance(0, objPlayer.y, 0, road_y_mid) / 2 * sign(objPlayer.y - road_y_mid)
	
    //attack choosinge and the sine wave attack
    if attack_choice = 0 and wait = false
    {
		wait_amount = 1.5
		
    alarm[0] = room_speed * 10
    if transition_amount < 1 {
		attack_check(5)
		
		switch(attack_choice) {
			case 1:
			wait_amount = 2.5
			break;
			case 2:
			wait_amount = 3
			break;
			case 4:
			alarm[0] = room_speed * 16
			break;
			case 5:
			alarm[0] = room_speed * 15
			break;
		}
	} else {
		attack_check(4)
		
		switch(attack_choice) {
			case 1:
			wait_amount = 1
			break;
			case 2:
			wait_amount = 2.5
			break;
			case 3:
			alarm[0] = 1.5 * room_speed
			wait_amount = 2
			alarm[6] = -1
			ill_speed = 0
			break;
			case 4:
			wait_amount = 1
			ill_speed = 1.5
			break;
		}
	}
		
    }
    
    //wave attack
    if attack_choice = 1
    {
		move_dir_t += 1
		move_dir_t = move_dir_t mod 360
		
		pos_y = road_y_mid + 20 + sin(degtorad(move_dir_t)) * 45
	}
    else
    {
    alarm[2] = 20
    }

    //sneaky double shot attack
    if attack_choice = 2 {
		//the weird wall effect
		if transition_amount < 1 
			create_if_exist(0, 0, objIllusionSurface)
    }
    else {
    alarm[3] = 15
    }
    
    //spiral
    if attack_choice = 3 {
		if transition_amount < 1 {
			globalvar thebadbullet; thebadbullet = irandom(10)
		
			for(var tring = 0; tring < 6; tring++) {
				for(var tring_y = 0; tring_y < 11; tring_y++) {
					var invb = instance_create(400 + (24 * tring), road_y_min + (16 * tring_y), objIllusionWallInvisible)
				
					with(invb) {
						damage = 1
						angle = 0
						if thebadbullet = tring_y not_real = true
					}
				}
			}
		
			attack_choice = 0
			alarm[0] = 1
			wait_amount = 2
		}
    }
    
    //minis
    if attack_choice = 4 {
		globalvar bounceang; bounceang = random(360)
		if transition_amount >= 1 and !instance_exists(objIllusionBounceBullet) {
			repeat(60) {
				var bounce_bul = instance_create(room_width / 2, room_height / 2, objIllusionBounceBullet)
				
				with(bounce_bul) {
					angle = bounceang
				}
				bounceang += 6
			}
		} else if transition_amount < 1 {
			var xxxx = 30;
			repeat(2){
				var trt = instance_create(xxxx + random_range(-2, 2), 0, objEnemyBullet)
			
				with(trt) {
					damage = 1
					spd = 3
					angle = -90
				}
				xxxx += 85
			}
		}
    } else {
		alarm[4] = 5
	}
	
	//circles
    if attack_choice = 5
    {
    } else {
		alarm[5] = 5
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

smoke = instance_create(x + random_range(-5, 5), y, objSmoke)

with(smoke)
{
spd = random_range(-1, 1)
raise = random_range(0.05, 0.2)
grow = random_range(0.01, 0.08)
}

/* */
/*  */
