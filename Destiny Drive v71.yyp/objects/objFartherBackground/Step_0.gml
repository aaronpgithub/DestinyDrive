event_inherited()

move_wrap(true, false, 320)
image_speed = 0

/*
if instance_exists(objGameControl)
{
    if global.level = "swamp"
    {
        if x < -310 and transition > -2
        {
        transition -= 1
        }
                
        if x < -310 and sprite_index = sprFartherBackground
        {
            sprite_index = sprSwampFartherBackground
        }
        
        if transition = 0
        {
            if x < -310
            {
            sprite_index = sprSwampFartherBackgroundTransition
            }
        }
        
        if x < -310 and sprite_index = sprSwampFartherBackgroundTransition and transition = -1
        {
            sprite_index = sprSwampFartherBackground
        }
    }
    
    if global.level = "volcano"
    {
    sprite_index = sprVolcanoFartherBackground
    }
}

/* */
/*  */
