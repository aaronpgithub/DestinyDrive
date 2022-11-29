        var sine1, sine2, offst;
        sine1 = 16 * sin(degtorad(sine_t_1))
        sine2 = 16 * sin(degtorad(sine_t_2))
        
        offst = 0
        var pro = 28;
        
        repeat(2) {
        var ints = instance_create(sine_area_1_x + 200 + lengthdir_x(sine1 + offst, 135), sine_area_1_y - 250 + lengthdir_y(sine1 + offst, 135), objFinalBossSineWave1)
        
            with(ints) {
            spd = -4
            angle = 45
            outside_special = true
            }
            
        var ints2 = instance_create(sine_area_2_x - sx2 + lengthdir_x(sine2 + offst, 225), sine_area_2_y - sy2 + lengthdir_y(sine2 + offst, 225), objFinalBossSineWave1)
        
            with(ints2) {
            spd = -4
            angle = 135
            outside_special = true
            }
            
            for(var dop = 1; dop <= 10; dop++) {
                if offst = 0 {
                    var killm = instance_create(sine_area_1_x + 200 + lengthdir_x(sine1 + dop * pro, 135), sine_area_1_y - 250 + lengthdir_y(sine1 + dop * pro, 135), objFinalBossSineWave2)
                    var killm2 = instance_create(sine_area_2_x - sx2 + lengthdir_x(sine2 + dop * pro, 225), sine_area_2_y - sy2 + lengthdir_y(sine2 + dop * pro, 225), objFinalBossSineWave2)
                    
                    with(killm) {
                    spd = -4
                    angle = 45
                    outside_special = true
                    }
                    
                    with(killm2) {
                    spd = -4
                    angle = 135
                    outside_special = true
                    }
                } else {
                    var killm = instance_create(sine_area_1_x + 200 + lengthdir_x(sine1 + offst - (dop * pro), 135), sine_area_1_y - 250 + lengthdir_y(sine1 + offst - (dop * pro), 135), objFinalBossSineWave2)
                    var killm2 = instance_create(sine_area_2_x - sx2 + lengthdir_x(sine2 + offst  - (dop * pro), 225), sine_area_2_y - sy2 + lengthdir_y(sine2 + offst - (dop * pro), 225), objFinalBossSineWave2)
                    
                    with(killm) {
                    spd = -4
                    angle = 45
                    outside_special = true
                    }
                    
                    with(killm2) {
                    spd = -4
                    angle = 135
                    outside_special = true
                    }
                }
            }
            
            
            offst -= 50
        }
        
        alarm[3] = 4

