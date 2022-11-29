/// @description junk pile

if global.level = "wasteland"
{
    alarm[10] = random_range(25, 35)
    if alarm[11] > 60
    {
        repeat(round(random_range(1, 2)))
        {
        instance_create(360 + random_range(-10, 10), road_y_min + random_range(20, 178), objJunkPile)
        }
    }
}

if global.level = "volcano"
{
    if global.wave = lava_wave
    {
    alarm[10] = 2
    
    brid_t += 3
    
    bridge_pos = 150 + (70 * sin(degtorad(brid_t)))
    
    /*
    bridge_pos += random_range(-3, 3)
    
    if bridge_pos > 250
    {
    bridge_pos -= 3
    }
    
    if bridge_pos < 80
    {
    bridge_pos += 3
    }
    */
    
    var bibdge = instance_create(360, bridge_pos, objBridge)
    
        with(bibdge)
        {
        image_angle = point_direction(x, y, x - 10, 150 + (70 * sin(degtorad(objGameControl.brid_t - 10))))
        }
    }
}

/* */
/*  */
