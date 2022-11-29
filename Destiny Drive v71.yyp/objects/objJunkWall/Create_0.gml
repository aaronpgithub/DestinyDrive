transition = -2
spd = 9

if room = rmMenu
{
    switch(objMenuControl.level_decal)
    {
    case "wasteland":
    //normal, no change
    break;
    
    case "swamp":
    sprite_index = sprSwampWall
    break;
    
    case "forest":
    sprite_index = sprForestWall
    break;
    
    case "volcano":
    sprite_index = sprVolcanoWall
    break;
    
    case "snow":
    sprite_index = sprSnowWall
    break;
    
    case "city":
    sprite_index = sprCityWall
    break;
    
    case "ocean":
    sprite_index = sprOceanWall
    break;
    
    case "temple_outside":
    sprite_index = sprTempleOutsideWall
    break;
    
    case "temple_inside":
    sprite_index = sprTempleInsideWall
    break;
    
    case "edge":
    sprite_index = sprEdgeWall
    break;
    
    case "hell":
    sprite_index = sprHellWall
    break;
    
    case "killroom":
    sprite_index = sprKillRoomWall
    break;
    
    case "tv":
    sprite_index = sprTVWall
    break;
    }
}

event_inherited()

