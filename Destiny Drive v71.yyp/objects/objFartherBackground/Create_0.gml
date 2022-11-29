spd = 0.70
transition = -2

if room = rmMenu
{
    switch(objMenuControl.level_decal)
    {
    case "wasteland":
    //normal, no change
    break;
    
    case "swamp":
    sprite_index = sprSwampFartherBackground
    break;
    
    case "forest":
    instance_create(x, 58, objForestFarthestBackground)
    instance_destroy()
    break;
    
    case "volcano":
    sprite_index = sprVolcanoFartherBackground
    break;
    
    case "snow":
    sprite_index = sprSnowFartherBackground
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
    sprite_index = sprHellFartherBackground
    break;
    
    case "killroom":
    sprite_index = sprKillRoomFartherBackground
    break;
    
    case "tv":
    sprite_index = -1
    break;
    }
}

event_inherited()

