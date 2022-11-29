var inst, inst2;

//hand stuff
rhand_t += 1
rhand_t = rhand_t mod 360
r_skull_hand_x = lerp(r_skull_hand_x, x + 15, 0.3)
r_skull_hand_y = lerp(r_skull_hand_y, y + 30 + (sin(degtorad(rhand_t)) * 15), 0.5)

lhand_t += 1
lhand_t = lhand_t mod 360
l_skull_hand_x = lerp(l_skull_hand_x, x - 95, 0.3)
l_skull_hand_y = lerp(l_skull_hand_y, y + 20 + (sin(degtorad(lhand_t)) * 15), 0.5)
//////////

global.ang3 += 0.6

//boss attacks n shit
if alarm[11] <= 0
{   
    if instance_exists(objCutscene) {
    with(objCutscene) instance_destroy()
    }

    if objPlayer_x > 200
    {
            var boopopoo = instance_create(320, random_range(64, 240), objEnemyBullet)
            
                with(boopopoo)
                {
                angle = 0
                spd = -4 * global.enemy_spd
                damage = 1
                image_angle = 45
                }
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(3)
    
        if attack_choice = 1 {
            bullet_block_type = irandom_range(0, 2)
            bullet_block_extra = choose("bullet", "wall", "circle")
            if bullet_block_type != 1 alarm[0] = random_range(room_speed * 15, room_speed * 25)
            if bullet_block_type = 1 alarm[0] = random_range(room_speed * 10, room_speed * 12) 
        }
        
        if attack_choice = 3 alarm[0] = room_speed * 10
    }
    
    //Blast of bullets/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if attack_choice = 1
    {
        switch(bullet_block_type)
        {
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            case 0:
                repeat(round(bullet_fade))
                {
                    if bullet_wave_y >= 0
                    {
                        var randlen_x = 200
                        var randlen_y = 200
                    
                        var iteten = instance_create(240 + lengthdir_x(-400, bullet_wave_angle) + lengthdir_x(random_range(-randlen_x, randlen_x), bullet_wave_angle + 90), bullet_wave_y + lengthdir_y(-400, bullet_wave_angle) + lengthdir_y(random_range(-randlen_y, randlen_y), bullet_wave_angle + 90), objFinalBossBulletWave)
                        
                            with(iteten)
                            {
                            damage = 1
                            spd = 5 * global.enemy_spd
                            angle = objTheFinalBoss.bullet_wave_angle
                            }
                    }
                }
                
                if alarm[2] > 90
                {
                if bullet_fade < 21 bullet_fade += bullet_fade_add
                }
                else
                {
                if bullet_fade > 0 bullet_fade -= bullet_fade_rem
                }
            break;
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //ROTATING SPIRAL
            case 1:
            if alarm[2] <= 0 and alarm[0] > room_speed * 1.6
            {
                bullet_wave_angle += 2 * global.enemy_spd
                repeat(round(bullet_fade))
                {
                    if bullet_wave_y >= 0
                    {
                        var randlen_x = 100
                        var randlen_y = 100
                        var itetenny = instance_create(90 + lengthdir_x(-400, bullet_wave_angle) + lengthdir_x(random_range(-randlen_x, randlen_x), bullet_wave_angle + 90), road_y_mid + lengthdir_y(-400, bullet_wave_angle) + lengthdir_y(random_range(-randlen_y, randlen_y), bullet_wave_angle + 90), objFinalBossBulletWave)
                        
                            with(itetenny)
                            {
                            damage = 1
                            spd = 9 * global.enemy_spd
                            angle = objTheFinalBoss.bullet_wave_angle
                            outside_special = true
                            alarm[6] = 90
                            }
                    }
                }
                
                if bullet_fade < 20 bullet_fade += bullet_fade_add
            }
            break;
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            case 2:
            yellow_alarm--
                    if bullet_wave_y >= 0
                    {
                        var randlen_x = 200
                        var randlen_y = 200
                        repeat(2) {
                            var itetena = instance_create(room_width + 10, random_range(0, 256), objFinalBossBulletWave)
                            
                                with(itetena)
                                {
                                damage = 1
                                spd = -5 * global.enemy_spd
                                angle = 0
                                }
                        }
                            
                                                
                        if bullet_block_extra = "bullet" and yellow_alarm = 0 {
                            var randlen_x_yel = 200
                            var randlen_y_yel = 200
                            globalvar rand_angle;
                            rand_angle = random(360)
                            var iteten_yel = instance_create(240 + lengthdir_x(-400, rand_angle) + lengthdir_x(random_range(-randlen_x_yel, randlen_x_yel), rand_angle + 90), bullet_wave_y + lengthdir_y(-400, rand_angle) + lengthdir_y(random_range(-randlen_y, randlen_y), rand_angle + 90), objFinalBossYellowBullet)
                        
                            with(iteten_yel)
                            {
                            damage = 1
                            spd = 1.4 * global.enemy_spd
                            }
                        yellow_alarm = 6
                        }
                    }
            break;
            
        }
    }
    else
    {
    alarm[2] = 2
    }
    //Blast of bullets///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    
    //Sine wave thing
    if attack_choice = 2
    {
        sine_t_1 += 10
        sine_t_2 += 7
    }
    else
    {
    sine_area_1_x = random_range(50, 100)
    sine_area_1_y = random_range(road_y_min + 40, road_y_max - 60)

    sine_area_2_x = random_range(50, 100)
    sine_area_2_y = random_range(road_y_min + 40, road_y_max - 60)
    alarm[3] = 15
    }
    
    //Zig Zag
    if attack_choice = 3
    {
    global.len_spd = alarm[0] / (room_speed * 10)
    }
    else
    {
    alarm[4] = 15
    }
    
    //screen scale
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 80
    }
    
    //Ooh get ready boys
    if attack_choice = 5
    {
    }
    else
    {
    alarm[6] = 15
    }
}

