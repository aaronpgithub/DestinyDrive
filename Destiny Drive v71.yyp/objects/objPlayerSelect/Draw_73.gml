if global.menu = "char_select" and global.character = image_index
{ //sprite_get_number(sprCharAccomp) - 1
    for(var spr_i_y = 1; spr_i_y >= 0; spr_i_y--)
    {
        for(var spr_i = 6; spr_i >= 0; spr_i--)
        {
        draw_sprite_ext(sprCharAccomp, spr_i + (7 * spr_i_y), ((room_width / 2) - 60) + spr_i * 24, (room_height / 2) + 48 + (spr_i_y * 24), 1, 1, 0, c_white, global.levels_beat[global.character, spr_i + (7 * spr_i_y)])
        }
    }   
}

