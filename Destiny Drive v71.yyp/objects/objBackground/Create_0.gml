spd = 2
transition = -2

alarm[0] = room_speed * random_range(8, 30)

if room = rmMenu
{
    switch(objMenuControl.level_decal)
    {
    case "wasteland":
    //normal, no change
    break;
    
    case "swamp":
    sprite_index = sprSwampBackground
    break;
    
    case "forest":
    instance_create(x, 60, objForestBackground)
    instance_destroy()
    break;
    
    case "volcano":
    sprite_index = sprVolcanoBackground
    break;
    
    case "snow":
    sprite_index = -1
    break;
    
    case "city":
    sprite_index = sprCityBackground
    break;
    
    case "ocean":
    sprite_index = sprOceanBackground
    break;
    
    case "temple_outside":
    sprite_index = -1
    break;
    
    case "temple_inside":
    sprite_index = -1
    break;
    
    case "edge":
    sprite_index = sprEdgeBackground
    break;
    
    case "hell":
    sprite_index = sprHellBackground
    break;
    
    case "killroom":
    sprite_index = sprKillRoomBackground
    break;
    
    case "tv":
    sprite_index = -1
    break;
    }
}

event_inherited()

