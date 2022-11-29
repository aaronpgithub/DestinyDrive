event_inherited()

if alarm[11] <= 0
{
    if player_too_close(warning_x, 80)
    {
			var splashfk = instance_create(x, y, objFlyingFishWater)
    
	        with(splashfk)
	        {
	        angle = random(360)
	        damage = 1
	        spd = 4 * global.enemy_spd
	        image_angle = angle
	        }
	}

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
	wait_amount = 1
	
    alarm[0] = room_speed * 10
    attack_check(4)
	bubble_bounce = choose(true, false)
	if prac_param(0) bubble_bounce = false
	if prac_param(1) bubble_bounce = true
	
	#region attack specifics
	if attack_choice = 1 wait_amount = 3
	if attack_choice = 2 {
		if bubble_bounce = true {
			alarm[0] = room_speed * 4
		} else alarm[0] = room_speed * 3
	}
	if attack_choice = 3 wait_amount = 3
	if attack_choice = 4 wait_amount = 3
	#endregion
    }
    
    //water splash
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 20
    }
    
    //bubble
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 20
    }
    
    //spray
    if attack_choice = 3
    {
		if frac(alarm[4] / 7) = 0 {
			globalvar fish_neg;
			fish_neg = -1
			
			repeat(2) {
			var watersplash = instance_create(x, y, objFlyingFishWater)

			    with(watersplash)
			    {
			    spd = -2.5 * global.enemy_spd
			    damage = 1
			    angle = objFlyingFish.angle * fish_neg
			    image_angle = angle
			    }
				fish_neg *= -1
			}
		}
    }
    else
    {
    alarm[4] = 30
    }
    
    //tricky tricky bubbles
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 12
    alarm[6] = 12
    }
}
else
{
    var i;
    
    for(i = 0; i <= 10; i++)
    {
    alarm[i] = 50
    }
}

