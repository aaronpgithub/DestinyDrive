/// @description bullet waves

block_id++

if bullet_block_type != 1
{
    if bullet_block_type = 0 alarm[2] = 310
    if bullet_block_type = 2 alarm[2] = 310
    
    bullet_wave_y = irandom_range(0, 256)
    if bullet_block_type != 2 bullet_fade = 1 //the amount of bullets created every step
    
    bullet_wave_angle = point_direction(240, bullet_wave_y, 50, room_height / 2)
    
    var yrand = 50;
    if bullet_block_type = 2 yrand = 50 + random_range(-75, 10)
    
    //circle radius/////////////////////////////////////////
    if bullet_block_extra = "circle" and bullet_block_type = 2
    {
        var circle = instance_create_depth(x - 90, y - 10, -100, objFinalBossBlockingBullet)
        
        if first_circle = false
        {
            with(circle)
            {
            damage = 5
            spd = -0.35 * global.enemy_spd
            angle = 0
            block_type = choose("sine", "saw", "square")
            t_spd = random_range(4, 5)
            amp = choose(random_range(-30, -60), random_range(30, 60))
            radius = true
            angle_add = choose(random_range(-4, -2), random_range(2, 4))
            }
        }
        else
        {
            with(circle)
            {
            damage = 5
            spd = -0.35 * global.enemy_spd
            angle = 0
            extra_angle_dest = 270
            block_type = choose("sine", "saw", "square")
            t_spd = random_range(4, 5)
            amp = choose(-35, 35)
            radius = true
            angle_add = 2
            first = true
            }
        first_circle = false
        }
        exit;
    }
    /////////////////////////////////////////////////////////////
    
        var bulblok = instance_create_depth(x - 90, y - random_range(-20, 20), -100, objFinalBossBlockingBullet)
        
        with(bulblok)
        {
        damage = 5
        spd = -0.3 * global.enemy_spd
        angle = random_range(-6, 6)
        block_type = choose("normal", "sine", "saw", "square")
        t_spd = 3
        if objTheFinalBoss.bullet_block_type = 2 radius = true //IS NECESSARY, needed for when bullet is radius, but NOT a circle rad
        amp = choose(-14, 14)
        angle_add = choose(random_range(-6, -4), random_range(4, 6))
        }

} else {

    if !instance_exists(objFinalBossBlockingBullet) {
        var garmp = instance_create_depth(x, road_y_mid, -100, objFinalBossBlockingBullet)
        
            with(garmp)
            {
            damage = 5
            spiral = true
            no_move_destroy = false
            spd = 0
            }
            alarm[2] = 90
    }
    
    
    
    bullet_wave_y = 4 //just to start making bullets
}

