draw_self()

if objShop.x <= room_width / 2
{
    if image_index = 0
    {
		draw_set_halign(fa_center)
		switch(buy_type) {
        case 0:
            draw_sprite(sprItem, buy_id, x, y - 70)
			draw_text_color(x, y - 50, "$" + string(price), c_white, c_white, c_white, c_white, 1) 
		break;
        
        case 1:
            draw_sprite(sprUseItem, buy_id, x, y - 70)
			draw_sprite(sprUseText, 0, x + 8, y - 62)
			draw_text_color(x, y - 50, "$" + string(price), c_white, c_white, c_white, c_white, 1) 
		break;
        
        case 2:
            draw_sprite(sprHealth, buy_id, x, y - 70)
			draw_text_color(x, y - 50, "$" + string(price), c_white, c_white, c_white, c_white, 1) 
		break;
        
	    case 3:
	    create_if_exist(x, y - 70, objGamblingMachine)
	    break;
		}
		draw_set_halign(fa_left)
    }
}