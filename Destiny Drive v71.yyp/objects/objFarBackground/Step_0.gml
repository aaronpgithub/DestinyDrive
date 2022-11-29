event_inherited()

move_wrap(true, false, 320)
image_speed = 0

/*
if instance_exists(objGameControl)
{
    if x < -318.6 and transition > -2
    {
    transition -= 1
    }
    
    if transition = 0
    {
        if global.level = "swamp" and x < -318.6
        {
        sprite_index = sprSwampFarBackgroundTransition
        }
    }
    
    if x < -318.6 and sprite_index = sprFarBackground
    {
        if global.level = "swamp"
        {
        sprite_index = sprSwampFarBackground
        }
    }
    
    if x < -318.6 and sprite_index = sprSwampFarBackgroundTransition and transition = -1
    {
        if global.level = "swamp"
        {
        sprite_index = sprSwampFarBackground
        }
    }
    
    if global.level = "volcano"
    {
    sprite_index = sprVolcanoFarBackground
    }
}

/* */
/*  */
