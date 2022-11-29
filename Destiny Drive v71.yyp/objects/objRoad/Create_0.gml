transition = -2
spd = 9

lava = false

if room = rmMenu
{
    switch(objMenuControl.level_decal)
    {
    case "wasteland":
    //normal, no change
    break;
    
    case "swamp":
    sprite_index = sprSwampRoad
    break;
    
    case "forest":
    sprite_index = sprForestRoad
    break;
    
    case "volcano":
    sprite_index = sprVolcanoRoad
    break;
    
    case "snow":
    sprite_index = sprSnowRoad
    break;
    
    case "city":
    sprite_index = sprCityRoad
    break;
    
    case "ocean":
    sprite_index = sprOceanRoad
    break;
    
    case "temple_outside":
    sprite_index = sprTempleOutsideRoad
    break;
    
    case "temple_inside":
    sprite_index = sprTempleInsideRoad
    break;
    
    case "edge":
    sprite_index = sprEdgeRoad
    break;
    
    case "hell":
    sprite_index = sprHellRoad
    break;
    
    case "killroom":
    sprite_index = sprKillRoomRoad
    break;
    
    case "tv":
    sprite_index = sprTVRoad
    break;
    }
}

event_inherited()

