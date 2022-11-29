event_inherited()

if snp = false
{
globalvar algore;
algore = angle;

    for(var iop = 0; iop < irandom_range(4, 9); iop++)
    {
        var opokt = instance_create(x + lengthdir_x(( (iop + 1) * -12) + 4, angle), y + lengthdir_y(( (iop + 1) * -12) + 4, angle), objSnakeBullet)
        
        with(opokt)
        {
        angle = algore
        spd = 4 * global.shot_speed
        damage = 10 * global.dmg
        no_flash = true
        outside_special = true
        color = c_yellow
        snp = true
        sprite_index = sprBullet
        }   
    }
snp = true
}

if y < road_y_min
{
    angle -= 2
    image_angle = angle
}

if y > road_y_max
{
    angle += 2
    image_angle = angle
}

motion_set(angle, spd)

if wrap <= 0 and (x > 400 or x < -100) instance_destroy()

