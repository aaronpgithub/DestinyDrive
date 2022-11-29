spd = 1.3
transition = -2

if room = rmMenu
{
    switch(objMenuControl.level_decal)
    {
    case "wasteland":
    //normal, no change
    break;
    
    case "swamp":
    sprite_index = sprSwampFarBackground
    break;
    
    case "forest":
    instance_create(x, 62, objForestFartherBackground)
    instance_destroy()
    break;
    
    case "volcano":
    sprite_index = sprVolcanoFarBackground
    break;
    
    case "snow":
    sprite_index = sprSnowFarBackground
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
    sprite_index = sprHellFarBackground
    break;
    
    case "killroom":
    sprite_index = sprKillRoomFarBackground
    break;
    
    case "tv":
    sprite_index = -1
    break;
    }
}

event_inherited()

