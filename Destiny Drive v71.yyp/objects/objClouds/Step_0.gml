event_inherited()

x += 0.1 //this gives the clouds a little movement after death

move_wrap(true, false, 320)
image_speed = 0

if x < 0 y = random(6)

/*
if instance_exists(objGameControl)
{
    if x < -319 and transition > -2
    {
    transition -= 1
    }
    
    if transition = 0
    {
        if global.level = "swamp" and x < -319
        {
        sprite_index = sprSwampCloudsTransition
        }
    }
    
    if x < -319 and sprite_index = sprClouds
    {
        if global.level = "swamp"
        {
        sprite_index = sprSwampClouds
        }
    }
    
    if x < -319 and sprite_index = sprSwampCloudsTransition and transition = -1
    {
        if global.level = "swamp"
        {
        sprite_index = sprSwampClouds
        }
    }
    
    if global.level = "volcano"
    {
    sprite_index = sprVolcanoClouds
    }
}

/* */
/*  */
