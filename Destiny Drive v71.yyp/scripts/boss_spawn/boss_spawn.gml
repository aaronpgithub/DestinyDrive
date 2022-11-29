function boss_spawn() {
	instance_create(272, 160, objBossSpawn)
    
	    if global.artifact[5, 0] = 1
	    {
	    objPlayer.weapon = irandom(sprite_get_number(sprGun) - 1)
	    }
    
	    if global.challenge = 7 {
	    alarm[9] = room_speed * 60
	    }



}
