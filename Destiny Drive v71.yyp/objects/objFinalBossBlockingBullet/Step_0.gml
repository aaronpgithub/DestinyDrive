event_inherited()

if x < -180 instance_destroy()

if spiral = false {
    
    var first_x = lengthdir_x(spd + (-(spd_add) * global.enemy_spd), angle);
    var first_y = lengthdir_y(spd + (-(spd_add) * global.enemy_spd), angle);
    
    if spd_add > 0 spd_add -= 0.50
    
    true_x += first_x
    true_y += first_y
    
    switch(block_type)
    {
        case "normal":
        x = true_x
        y = true_y
        break;
        
        
        case "sine":
        t_spd = clamp(t_spd, 2, 3)
        twave += t_spd
        x = true_x + lengthdir_x(sin(degtorad(twave)) * amp, angle + 90)
        y = true_y + lengthdir_y(sin(degtorad(twave)) * amp, angle + 90)
        break;
        
        
        case "saw":
            if movement = "up" {
            twave += t_spd / 5
                if twave > abs(amp) movement = "down"
            }
            else {
            twave -= t_spd / 5
                if twave < -(abs(amp)) movement = "up"
            }
        x = true_x + lengthdir_x(twave * sign(amp), angle + 90)
        y = true_y + lengthdir_y(twave * sign(amp), angle + 90)
        break;
        
        
        case "square":
            if movement = "up" {
            twave += t_spd / 5
                if twave > abs(amp) movement = "still"
                still_timer = 0
            }
            else if movement = "down" {
            twave -= t_spd / 5
                if twave < -(abs(amp)) movement = "still"
                still_timer = 0
            }
            else if movement = "still" {
            still_timer += t_spd / 2
                if still_timer > 45 {
                if twave < -(abs(amp)) movement = "up"
                if twave > abs(amp) movement = "down"
                }
            }
        x = true_x + lengthdir_x(twave * sign(amp), angle + 90)
        y = true_y + lengthdir_y(twave * sign(amp), angle + 90)
        break;
    }
    
    if instance_exists(objTheFinalBoss) {
        if objTheFinalBoss.attack_choice = 1 alarm[8] = 80
    }
} else {
x = lerp(x, 90, 0.05)
y = lerp(y, road_y_mid, 0.05)
sprite_index = sprBlockingBulletBig

    if instance_exists(objTheFinalBoss) {
        if objTheFinalBoss.attack_choice != 1 {
            image_xscale -= 0.1
            image_yscale -= 0.1
            
            if image_xscale <= 0 instance_destroy()
        }
    }
}




///radius lines
if radius = true
{
    if instance_number(objFinalBossBlockingBullet) > 1 {
    
            globalvar ID_check;
            ID_check = id
        
            if created_radius_line = false {
                var radwall = instance_create(x, y, objRadiusWall)
                
                    with(radwall) {
                    ID = ID_check
                    }
                created_radius_line = true
            }
    
                globalvar myID, bullet_near;
                myID = ID
                bullet_near = id
                for(var tito = 0; tito < instance_number(objFinalBossBlockingBullet); tito++) {
                    if instance_find(objFinalBossBlockingBullet, tito).ID = myID + 1 {
                    bullet_near = instance_find(objFinalBossBlockingBullet, tito)
                    }
                }
        
            with(objRadiusWall) {
                if instance_exists(ID_check) {
                    if ID = ID_check {
                        x = ID_check.x
                        y = ID_check.y
                        image_alpha = ID_check.radius_alpha
                        image_xscale = point_distance(x, y, bullet_near.x, bullet_near.y) / 32
                        image_angle = point_direction(x, y, bullet_near.x, bullet_near.y)
                    }
                }
            }
        
    }
}


///Obsolete radius lines
/*
if radius = true
{
    if instance_number(objFinalBossBlockingBullet) > 1 {
    
            globalvar ID_check;
            ID_check = id
        
            if created_radius_line = false {
                var radwall = instance_create(x, y, objRadiusWall)
                
                    with(radwall) {
                    ID = ID_check
                    }
                created_radius_line = true
            }
    
            globalvar instid, xtest, myID, found_inst, bullet_near, xteststart;
            found_inst = false
            instid = 0
            xtest = x
            xteststart = x
            myID = id
            
            do {
                xtest -= 25
                with(objFinalBossBlockingBullet) {
                    if x > xtest and id != myID {
                    instid = id
                    found_inst = true
                    }
                }
            bullet_near = instid
            } until (found_inst = true)
        
            with(objRadiusWall) {
                if instance_exists(ID_check) {
                    if ID = ID_check {
                        x = ID_check.x
                        y = ID_check.y
                        image_alpha = ID_check.radius_alpha
                        image_xscale = point_distance(x, y, bullet_near.x, bullet_near.y) / 32
                        image_angle = point_direction(x, y, bullet_near.x, bullet_near.y)
                    }
                }
            }
        
    }
}


/* */
/*  */
