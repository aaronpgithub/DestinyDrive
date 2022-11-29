
    globalvar anglee, anglmutpos;
    
    anglee = random(360)
	anglmutpos = 0

	repeat(5) {
		var tankyinst = instance_create(x, y, objEnemyBullet)
		
	    with(tankyinst)
	    {
	    angle = anglee + (72 * anglmutpos)
	    image_angle = angle
	    damage = 1
	    spd = 1.2 * global.enemy_spd
	    }
		
		anglmutpos++
	}

