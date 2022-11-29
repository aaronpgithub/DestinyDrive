event_inherited()

move_wrap(true, false, 320)
image_speed = 0

/*
if instance_exists(objGameControl)
{
    if x < -319.30 and transition > -2
    {
    transition -= 1
    }
    
    if transition = 0
    {
        if global.level = "swamp" and x < -319.30
        {
        sprite_index = sprSwampCloudsBackTransition
        }
    }
    
    if x < -319.30 and sprite_index = sprNoCloudsBack
    {
        if global.level = "swamp"
        {
        sprite_index = sprSwampCloudsBack
        }
    }
    
    if x < -319.30 and sprite_index = sprSwampCloudsBackTransition and transition = -1
    {
        if global.level = "swamp"
        {
        sprite_index = sprSwampCloudsBack
        }
    }
}

/* */
/*  */
