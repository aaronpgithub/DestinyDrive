event_inherited()
move_wrap(true, false, 320)
colll = make_colour_rgb(R, G, B)

    fire_color()
/*
if instance_exists(objGameControl)
{
    if image_alpha = 1
    {
        if light_alpha < 1 and objForestFarthestBackground.sprite_index = sprForestFarthestBackground and global.level != "volcano"
        {
        light_alpha += 0.05
        }
        
        if global.level = "volcano" and light_alpha > 0
        {
        light_alpha -= 0.05
        }
    }
    
    if x < -317
    {
        if transition >= 0
        {
        transition -= 1
        }
    image_alpha = 1
    
        if global.level = "volcano"
        {
            for(var i = instance_number(objForestFarthestBackground) - 1; i > -1; i--)
            {
                if instance_find(objForestFarthestBackground, i).sprite_index = sprForestFarthestBackgroundTransition
                {
                instance_destroy()
                exit;
                }
                else
                {
                image_xscale = -1
                x = instance_nearest(320, 60, objForestFarthestBackground).x
                sprite_index = sprForestFarthestBackgroundTransition
                }
            }
        }
    }
    
    if transition = 0
    {
    sprite_index = sprForestFarthestBackgroundTransition
    }
    
    if transition < 0 and global.level != "volcano"
    {
    sprite_index = sprForestFarthestBackground
    }
    
    
    fire_color()
}

/* */
/*  */
