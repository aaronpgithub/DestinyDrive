event_inherited()
move_wrap(true, false, 320)
colll = make_colour_rgb(R, G, B)

    fire_color()

// and objForestFarthestBackground.light_alpha >= 0.80

/*
if instance_exists(objGameControl)
{
    if image_alpha = 1
    {
            if light_alpha < 0.50 and objForestFartherBackground.sprite_index = sprForestFartherBackground and global.level != "volcano"
            {
            light_alpha += 0.05
            }
    
        if global.level = "volcano" and light_alpha > 0
        {
        light_alpha -= 0.05
        }
    }
    
    if x < -315
    {
        if transition >= 0
        {
        transition -= 1
        }
    image_alpha = 1
    
        if global.level = "volcano"
        {
            for(var i = instance_number(objForestFartherBackground) - 1; i > -1; i--)
            {
                if instance_find(objForestFartherBackground, i).sprite_index = sprForestFartherBackgroundTransition
                {
                instance_destroy()
                exit;
                }
                else
                {
                image_xscale = -1
                x = instance_nearest(320, 60, objForestFartherBackground).x
                sprite_index = sprForestFartherBackgroundTransition
                }
            }
        }
    }
    
    if transition = 0
    {
    sprite_index = sprForestFartherBackgroundTransition
    }
    
    if transition < 0 and global.level != "volcano"
    {
    sprite_index = sprForestFartherBackground
    }
    
    
    fire_color()
}

/* */
/*  */
