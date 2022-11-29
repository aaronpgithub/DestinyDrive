if global.menu = "stats_items"
{
    draw_self()
    
    if global.item_type_arr[item_type] = 1
    {
    draw_sprite_general(sprItem, item_type, 0, 0, 180, 180, x + 1, y + 1, 0.8, 0.8, 0, c_white, c_white, c_white, c_white, image_alpha)
    }
    else
    {
    draw_sprite_ext(sprLock, 0, x + (sprite_width / 2), y + (sprite_height / 2), 1, 1, 0, c_white, image_alpha)
    }
}

