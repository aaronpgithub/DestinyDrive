if ds_list_find_value(global.items, ID) >= 0
{
draw_sprite_ext(sprItem, ds_list_find_value(global.items, ID), x, y, 0.4, 0.4, 0, c_white, image_alpha)
}


if hover = true and image_alpha > 0 and ds_list_find_value(global.items, ID) >= 0
{
draw_set_halign(fa_left)
        draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)
        draw_text_ext_colour(5, 3, string_hash_to_newline(string(global.shop_string)), 12, 315, c_black, c_black, c_black, c_black, 1)
draw_set_halign(fa_center)
}

