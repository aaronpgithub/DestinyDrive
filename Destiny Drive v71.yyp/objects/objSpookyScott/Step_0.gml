#region transition
if hp <= ceil(max_hp * 0.6) and attack_choice = 0 { //transitioning to a different phase in the fight
	if transition_amount < 1 and image_alpha > 0.5 {
		image_alpha = 0.5
		transition_timer = 90
	} 
}
#endregion

warning_x = 190
if attack_choice = 5 warning_x = 160

if player_too_close(warning_x, 90) {
	repeat(2) {
		var eeeek = instance_create(x, y, objGhostBullet)
        
	    with(eeeek)
	    {
	    angle = random(360)
	    }
	}
}

if alarm[11] <= 0 and transition_timer <= 0
{   
	//attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = room_speed * 10
    if transition_amount < 1 attack_check(4)
	if transition_amount >= 1 attack_check(5)
    }
    
    //Scream
    if attack_choice = 1
    {
    scott_t += 3
	scott_t = scott_t mod 360
	
	angle = sin(degtorad(scott_t)) * 25
    }
    else
    {
    alarm[2] = 12
	scott_t = irandom(360)
    }
    
    //Turret Buddies
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //Squirmers
    if attack_choice = 3
    {
    //nothin
    }
    else
    {
    alarm[4] = 15
    }
    
    //Invisible Bullets
    if attack_choice = 4
    {
    //nothin
    }
    else
    {
    alarm[5] = 15
    }
	
	//Invisible Bullets
    if attack_choice = 5
    {
    }
    else
    {
    alarm[6] = 15
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

