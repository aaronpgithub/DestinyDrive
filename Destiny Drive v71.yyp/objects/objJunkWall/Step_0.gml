event_inherited()

move_wrap(true, false, 320)

/*
if instance_exists(objGameControl)
{
    if global.level = "swamp"
    {
        if x < -310 and transition > -2
        {
        transition -= 1
        }
        
        if transition = 0
        {
            if x < -310
            {
            sprite_index = sprSwampTransition
            }
        }
        
        if x < -310 and sprite_index = sprJunkWall
        {
            sprite_index = sprSwampWall
        }
        
        if x < -310 and sprite_index = sprSwampTransition and transition = -1
        {
            sprite_index = sprSwampWall
        }
    }
    
    if global.level = "forest"
    {
        if x < -310 and transition > -2
        {
        transition -= 1
        }
        
        if transition = 0
        {
            if x < -310
            {
            sprite_index = sprForestWallTransition
            }
        }
        
        if x < -310 and sprite_index = sprSwampWall
        {
            sprite_index = sprForestWall
        }
        
        if x < -310 and sprite_index = sprForestWallTransition and transition = -1
        {
            sprite_index = sprForestWall
        }
    }
    
    if global.level = "volcano"
    {
        if instance_find(objJunkWall, 0).sprite_index = sprVolcanoWall and instance_find(objJunkWall, 1).sprite_index = sprForestWall and instance_find(objJunkWall, 2).sprite_index = sprForestWall
        {
        sprite_index = sprVolcanoWallTransition
        }
        
            if x < -310 and transition > -2
            {
            transition -= 1
            }
            
            if transition = 0
            {
                if x < -310
                {
                sprite_index = sprVolcanoWallTransition
                }
            }
            
            if x < -310 and sprite_index = sprForestWall
            {
                sprite_index = sprVolcanoWall
            }
            
            if x < -310 and sprite_index = sprVolcanoWallTransition and transition = -1
            {
                sprite_index = sprVolcanoWall
            }
    }
}


/* */
/*  */
