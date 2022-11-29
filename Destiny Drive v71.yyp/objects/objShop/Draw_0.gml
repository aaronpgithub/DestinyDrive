shadow(0)

draw_set_colour(c_black)
{
    if bye = false
    {
            if instance_exists(objShopkeeper)
            {
            text_x = lerp(text_x, objShopkeeper.x, 0.4)
            }
        
        if x <= room_width / 2
        {            
            if instance_exists(objShopkeeper)
            {
            draw_triangle_colour(text_x, objShopkeeper.y - 35, text_x, y - 250, text_x + 30, y - 250, c_white, c_white, c_white, 0)
            }
        
        draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)
        text_amount += 1
        draw_text_ext(5, 3, string_hash_to_newline(string_copy(string(global.shop_string), 1, text_amount)), 12, 315)
        
            if objGlobalControl.coop = true
            {
            draw_set_halign(fa_center)
            draw_text_outline("Press RMB on weapon button to buy it for 2-Player.", room_width / 2, 220)
            draw_set_halign(fa_left)
            }
        }
    }
}

