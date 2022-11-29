event_inherited()
if !instance_exists(objCutscene)
{
move_wrap(true, false, 320)
}
else
{
    if objCutscene.alarm[0] > 0 move_wrap(true, false, 320)
}

//changing the road to lava
if instance_exists(objGameControl)
{
    if objGameControl.alarm[11] > room_speed * 1.7
    {
        if global.level = "volcano" and x < 0 and global.wave = objGameControl.lava_wave and objGameControl.brid_t >= 220
        {
        lava = true
        }
    }
    else if x < 0
    {
    lava = false
    }
    
    if global.level != "volcano"
    {
    lava = false
    }
    
    if global.wave != objGameControl.lava_wave and x < 0
    {
    lava = false
    }
}

/*
if instance_exists(objGameControl)
{
    if global.level = "swamp"
    {
        if instance_find(objRoad, 0).sprite_index = sprSwampRoad and instance_find(objRoad, 1).sprite_index = sprRoad and instance_find(objRoad, 2).sprite_index = sprRoad
        {
        sprite_index = sprSwampRoadTransition
        }
        
        
            if x < -310 and transition > -2
            {
            transition -= 1
            }
            
            if transition = 0
            {
                if x < -310
                {
                sprite_index = sprSwampRoadTransition
                }
            }
            
            if x < -310 and sprite_index = sprRoad
            {
                sprite_index = sprSwampRoad
            }
            
            if x < -310 and sprite_index = sprSwampRoadTransition and transition = -1
            {
                sprite_index = sprSwampRoad
            }
    }
    
    
    if global.level = "forest"
    {
        if instance_find(objRoad, 0).sprite_index = sprForestRoad and instance_find(objRoad, 1).sprite_index = sprSwampRoad and instance_find(objRoad, 2).sprite_index = sprSwampRoad
        {
        sprite_index = sprForestRoadTransition
        }
        
            if x < -310 and transition > -2
            {
            transition -= 1
            }
            
            if transition = 0
            {
                if x < -310
                {
                sprite_index = sprForestRoadTransition
                }
            }
            
            if x < -310 and sprite_index = sprSwampRoad
            {
                sprite_index = sprForestRoad
            }
            
            if x < -310 and sprite_index = sprForestRoadTransition and transition = -1
            {
                sprite_index = sprForestRoad
            }
    }
    
    if global.level = "volcano"
    {
        if instance_find(objRoad, 0).sprite_index = sprVolcanoRoad and instance_find(objRoad, 1).sprite_index = sprForestRoad and instance_find(objRoad, 2).sprite_index = sprForestRoad
        {
        sprite_index = sprVolcanoRoadTransition
        }
        
            if x < -310 and transition > -2
            {
            transition -= 1
            }
            
            if transition = 0
            {
                if x < -310
                {
                sprite_index = sprVolcanoRoadTransition
                }
            }
            
            if x < -310 and sprite_index = sprForestRoad
            {
                sprite_index = sprVolcanoRoad
            }
            
            if x < -310 and sprite_index = sprVolcanoRoadTransition and transition = -1
            {
                sprite_index = sprVolcanoRoad
            }
    }
}

/* */
/*  */
