if alarm[11] <= 0
{
    if objPlayer_x < 170
    {
    alarm[7] = 20
    }

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
	wait_amount = 1
		
    alarm[0] = room_speed * 10
    attack_check(4)
	
	if attack_choice = 3 wait_amount = 2
	if attack_choice = 1 instance_create(x - 60, y - 40, objShotgunFlash)
    }
    
    //Shotgun
    if attack_choice = 1
    {
    }
    else
    {
    
    }
    
    //Pistol
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 55
    }
    
    //Crossbow
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
    
    //dogs
    if attack_choice = 4
    {
        //Alarm
        if instance_exists(objTheHunterWolves)
        {
        wait = true
        alarm[1] = room_speed * 3.5
        attack_choice = 0
        }
    }
    else
    {
    alarm[5] = 12
    }
} else {
    var i;
    
    for(i = 1; i <= 10; i++) {
    alarm[i] = 50
    }
}

