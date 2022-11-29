#region circle stuff
circle_timer--

if circle_timer < 0 and sprite_index != sprThePlagueAngry {
	circle_timer = 5
	
	var mult = 1
	
	if circle_num % 2 = 0 {
		mult = -1
	}
	
	ds_list_add(plague_circles, 0.01 * mult)
	
	circle_num++
}
#endregion

#region transition
	if attack_choice = 0 {
		if hp <= ceil(max_hp * 0.7) { //transitioning to a different phase in the fight
			if transition_amount < 1 and transition_done = true {
				sprite_index = sprThePlagueSlightAnger
				transition_timer = 90
			} 
		}
		
		if hp <= ceil(max_hp * 0.4) { //transitioning to a different phase in the fight
			if transition_amount = 1 and transition_done = true {
				sprite_index = sprThePlagueAngry
				transition_timer = 1000
				circle_speed = -1
			} 
		}
		
		if sprite_index = sprThePlagueSlightAnger {
			if transition_amount >= 1 sprite_index = sprThePlague
			x = pos_x + random_range(1, -1)
		}	
		
		if sprite_index = sprThePlagueAngry {
			if floor(image_index) = 5 create_if_exist(0, 0, objFlash)
		}	
	}
#endregion

if alarm[11] <= 0 and transition_timer <= 0
{
	#region warning
	warning_x = 200
	if transition_amount >= portal_transition warning_x = room_width
	
	if player_too_close(warning_x, 90)
    {
		var pleaseno = instance_create(x, y, objEnemyBullet)
    
        with(pleaseno)
        {
        spd = 4 * global.enemy_spd
        damage = 2
        angle = random(360)
        image_angle = angle
        sprite_index = choose(sprShifterBullet, sprRegularBulletWhite)
        }
    }
	#endregion
	
	#region practice
	if global.practice = true {
		if !instance_exists(objPlagueTeleport) and transition_amount >= portal_transition {
			transition_timer = 1
			image_alpha = 0
			draw_shadow = false
			wait_amount = 3
			instance_create(mid_x, mid_y, objPlagueTeleport)
			surface_free(plague_surface)
			tele_x = mid_x
			tele_y = mid_y
		}
		
		if instance_exists(objPlagueTeleport) and transition_amount < portal_transition {
			image_alpha = 1
			draw_shadow = true
			with(objPlagueTeleport) instance_destroy()
			plague_surface = surface_create(plague_radius * 2 + 10, plague_radius * 2 + 10)
			pos_x = xstart - 200
			pos_y = ystart
			y = pos_y
			x = pos_x
			sprite_index = sprThePlague
		circle_timer = 30
		circle_num = 0
		circle_speed = 0.7

		tele_id = 0
		tele_time = 1
		tele_time_mult = 1
		}
	}
	#endregion
	
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
		//For attack 3.
		puke_y = road_y_mid
		spiral_amount_portal = 0
		tele_time_mult = 1
		
    alarm[0] = room_speed * 10
	if transition_amount >= portal_transition {
		if tele_time >= 30 attack_check(4)
	} else attack_check(4)

		if transition_amount >= portal_transition {
		#region portal phase
				image_alpha = 0
				pos_y = random_range(20, 230)
				pos_x = room_width - random_range(25, 50)
		
			switch(attack_choice) {
				case 1: //Portals
				tele_time_mult = 0.6
				tele_x = room_width * 0.5
				tele_y = room_height * 0.5
				alarm[0] = room_speed * 12
				puke_y = choose(-1, 1) //variable isnt being used anymore, so I'm gonna steal it!
				if prac_param(0) puke_y = -1
				if prac_param(0) puke_y = 1
				break;
				case 2: //blasts
				tele_x = random_range(80, 240)
				tele_y = random_range(80, 180)
				alarm[0] = room_speed * 9
				break;
				case 3: //Semi Random Spit
				tele_x = random_range(80, 240)
				tele_y = random_range(80, 180)
				alarm[0] = room_speed * 12
				puke_y = choose(-1, 1) 
				//FIX?
				if prac_param(0) puke_y = -1
				if prac_param(0) puke_y = 1
				break;
				case 4: //spiral
				tele_x = random_range(80, 240)
				tele_y = random_range(80, 180)
				alarm[0] = room_speed * 12
				break;
				default:
				wait_amount = 1
			}
		#endregion
		} else {
			switch(attack_choice) {
				case 1: //Portals
				wait_amount = 3
				if transition_amount = 1 wait_amount = 5.5
				break;
				case 2: //blasts
				wait_amount = 2.5
				break;
				case 4: //rockets
				wait_amount = 1.6
				break;
				default:
				wait_amount = 1
			}
		}
		
		if transition_amount >= portal_transition wait_amount = 6
    }
	
	if attack_choice = 0 and wait = true and transition_amount >= portal_transition {
		sprite_index = sprThePlaguePhaseShift
		image_alpha = lerp(image_alpha, 1, 0.2)
		damage_multiplier = 2
		
		phase_time--
		if phase_time < 0 {
			phase_time = 90
			pos_y = random_range(20, 230)
			pos_x = room_width - random_range(25, 50)
			
			#region phasing
			var flakamount = 10

				globalvar flak_pos, random_a_p;
				flak_pos = 0
				random_a_p = irandom(360)

				repeat(flakamount)
				{
				var squinst;

				squinst = instance_create(x, y, objEnemyBullet)

				    with(squinst)
				    {
				    angle = ((360 / flakamount) * flak_pos) + random_a_p
				    image_angle = angle
				    damage = 1
				    spd = 2
					sprite_index = sprThePlagueCircleWallBullet
					image_index = irandom(1)
				    }
	
					flak_pos++
				}
			#endregion
		}
	}
    
    //Standard Bullet Portals
    if attack_choice = 1
    {
		if transition_amount >= portal_transition {
			if alarm[0] < room_speed * 1 tele_time_mult = lerp(tele_time_mult, 1, 0.05)
		}
    }
    else
    {
	alarm[2] = 5
    }
    
    //Spiral Bullet Portals
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
	if transition_amount >= portal_transition alarm[3] = 80
    }
    
    //Pukers
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 15
	if transition_amount >= portal_transition alarm[4] = 80
    }
    
    //Rockets
    if attack_choice = 4
    {
    }
    else
    {
	alarm[5] = 5
	if transition_amount >= portal_transition alarm[5] = 80
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

