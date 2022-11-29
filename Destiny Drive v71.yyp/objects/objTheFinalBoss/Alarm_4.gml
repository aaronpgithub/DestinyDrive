/// @description len bullet

if alarm[0] > room_speed * 1.4 {
    
    var ls = clamp(global.len_spd, 0.25, 1);
    
    alarm[4] = 42 * ls
    
    globalvar doodad;
    
    for(doodad = 0; doodad < 10; doodad++) {
            globalvar doadang;
            doadang = (doodad * (360 / 10))
    
        var work = instance_create(x, y, objFinalBossLenBullet)
        
            with(work) {
            myang = doadang
            damage = 1
            spd = 0
            no_move_destroy = false
            myx = (objTheFinalBoss.x - 80)
            myy = (objTheFinalBoss.y + 30)
            }
            
        var work2 = instance_create(x, y, objFinalBossLenBullet)
        
            with(work2) {
            myang = doadang
            damage = 1
            spd = 0
            no_move_destroy = false
            inv = true
            myx = (objTheFinalBoss.x - 80)
            myy = (objTheFinalBoss.y - 30)
            }
    }
}

