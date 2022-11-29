spd = 0.75
transition = -2

if room = rmMenu
{
    switch(objMenuControl.level_decal)
    {
    case "wasteland":
    //normal, no change
    break;
    
    case "swamp":
    sprite_index = sprSwampClouds
    break;
    
    case "forest":
    instance_destroy()
    break;
    
    case "volcano":
    sprite_index = sprVolcanoClouds
    break;
    
    case "snow":
    //normal, no change
    break;
    
    case "city":
    sprite_index = -1
    break;
    
    case "ocean":
    sprite_index = -1
    break;
    
    case "temple_outside":
    sprite_index = -1
    break;
    
    case "temple_inside":
    sprite_index = -1
    break;
    
    case "edge":
    sprite_index = -1
    break;
    
    case "hell":
    instance_destroy()
    break;

    case "killroom":
    //normal, no change
    break;    
    
    case "tv":
    sprite_index = -1
    break;
    }
}

event_inherited()

