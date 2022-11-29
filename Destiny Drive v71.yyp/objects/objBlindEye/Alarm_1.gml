/// @description shooting

var blind_inst;

    alarm[1] = 50
	globalvar blinde;
	blinde = id
	
    blind_inst = instance_create(mid_x, mid_y, objBlindEyeBullet)
    
        with(blind_inst)
        {
        spd = 1.25 * global.enemy_spd
        damage = 1
		followinst = blinde
        }
        
        champion_bullet(blind_inst)

