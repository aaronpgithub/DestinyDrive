if alarm[0] > room_speed
{
    alarm[2] = 5
    
    globalvar anble, fadeout;
    
	fadeout = -1
	if transition_amount >= 1 fadeout = 65
	
    for(anble = 31; anble > 0; anble--)
    {
    var spscinst = instance_create(x - 43, y - 29, objFadeBullet)
    
        with(spscinst)
        {
		alarm[0] = fadeout
			
        damage = 1
        spd = -2 * global.enemy_spd
        angle = (11.25 * anble) + objSpookyScott.angle
        image_angle = angle
		sprite_index = sprGhostBullet
        }
    }
}

