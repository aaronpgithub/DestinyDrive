if instance_exists(objNaturesBaneBulletCircle)
{
    if instance_exists(objNaturesBane)
    {
        switch(generation)
        {
        case 0:
                if objNaturesBane.alarm[0] > 0
                {
                dis = lerp(dis, 50 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
                }
            image_angle += 2 * global.enemy_spd
        break;
        case 1:
                if objNaturesBane.alarm[0] > 0
                {
                dis = lerp(dis, 65 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
                }
            image_angle += 3 * global.enemy_spd
        break;
        case 2:
                if objNaturesBane.alarm[0] > 0
                {
                dis = lerp(dis, 80 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
                }
            image_angle += 4 * global.enemy_spd
        break;
        case 3:
                if objNaturesBane.alarm[0] > 0
                {
                dis = lerp(dis, 95 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
                }
            image_angle += 5 * global.enemy_spd
        break;
        }
    
    x = objNaturesBaneBulletCircle.x + lengthdir_x(dis, image_angle)
    y = objNaturesBaneBulletCircle.y + lengthdir_y(dis, image_angle)
    
    
        if objNaturesBane.alarm[0] < 0
        {
        dis += 6 * global.enemy_spd
        }
    }
    
    if dis > 400
    {
        if instance_exists(objNaturesBane)
        {
            if objNaturesBane.dest_things = true
            {
            instance_destroy()
            }
        }
        else
        {
        instance_destroy()
        }
    }
    
    if global.hp <= 0
    {
        switch(generation)
        {
        case 0:
                dis = lerp(dis, 50 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
            image_angle += 2 * global.enemy_spd
        break;
        case 1:
                dis = lerp(dis, 65 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
            image_angle += 3 * global.enemy_spd
        break;
        case 2:
                dis = lerp(dis, 80 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
            image_angle += 4 * global.enemy_spd
        break;
        case 3:
                dis = lerp(dis, 95 * objNaturesBaneBulletCircle.dis_multiplier, 0.05 * global.enemy_spd)
            image_angle += 5 * global.enemy_spd
        break;
        }
    
    x = objNaturesBaneBulletCircle.x + lengthdir_x(dis, image_angle)
    y = objNaturesBaneBulletCircle.y + lengthdir_y(dis, image_angle)
    
        dis += 6 * global.enemy_spd
    }
}
else
{
    motion_add(image_angle, 2)
}

