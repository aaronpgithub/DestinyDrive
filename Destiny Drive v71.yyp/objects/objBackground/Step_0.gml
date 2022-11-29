event_inherited()

move_wrap(true, false, 320)
image_speed = 0


if x < 0 image_index = round(random(2))

/*
if instance_exists(objGameControl)
{
    if global.level = "swamp"
    {
        if x < -318 and transition > -2 and change = true
        {
        transition -= 1
        change = false
        }
        
        if transition = 0
        {
            if  x < -318
            {
            sprite_index = sprSwampBackgroundTransition
            }
        }
        
        if x < -318 and sprite_index = sprBackground
        {
            sprite_index = sprSwampBackground
        }
        
        if x < -318 and sprite_index = sprSwampBackgroundTransition and transition = -1
        {
            sprite_index = sprSwampBackground
        }
    }
    
    if global.level = "volcano"
    {
    sprite_index = sprVolcanoBackground
    }
}


/* */
/*  */
