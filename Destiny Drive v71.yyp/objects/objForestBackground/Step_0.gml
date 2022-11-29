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
            if light_alpha < 0.35 and objForestBackground.sprite_index = sprForestBackground and global.level != "volcano"
            {
            light_alpha += 0.05
            }
        
        if global.level = "volcano" and light_alpha > 0
        {
        light_alpha -= 0.05
        }
    }
    
    if x < -310
    {
        if transition >= 0
        {
        transition -= 1
        }
    image_alpha = 1
    
        
        if global.level = "volcano"
        {
            for(var i = instance_number(objForestBackground) - 1; i > -1; i--)
            {
                if instance_find(objForestBackground, i).sprite_index = sprForestBackgroundTransition
                {
                instance_destroy()
                exit;
                }
                else
                {
                image_xscale = -1
                x = instance_nearest(320, 60, objForestBackground).x
                sprite_index = sprForestBackgroundTransition
                }
            }
        }
    }
    
    if transition = 0
    {
    sprite_index = sprForestBackgroundTransition
    }
    
    if transition < 0 and global.level != "volcano"
    {
    sprite_index = sprForestBackground
    }


fire_color()
}

/* */
/*  */
