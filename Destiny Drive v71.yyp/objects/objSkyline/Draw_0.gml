draw_self()

if room = rmMenu
{
fade  = 1
    
    switch(objMenuControl.level_decal)
    {
        case "swamp":
        draw_sprite_ext(sprSwampSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "volcano":
        draw_sprite_ext(sprVolcanoSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "snow":
        draw_sprite_ext(sprSwampSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "city":
        draw_sprite_ext(sprCitySkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "ocean":
        draw_sprite_ext(sprOceanSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "edge":
        draw_sprite_ext(sprEdgeSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "hell":
        draw_sprite_ext(sprHellSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
        
        case "killroom":
        draw_sprite_ext(sprKillRoomSkyline, 0, x, y, 1, 1, 0, c_white, fade)
        break;
    }
}

