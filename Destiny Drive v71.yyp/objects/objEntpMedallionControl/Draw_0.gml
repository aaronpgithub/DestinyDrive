draw_sprite_ext(app_sprite, 0, 0, 0, 320 / sprite_get_width(app_sprite), 256 / sprite_get_height(app_sprite), 0, c_white, 1)

    with(all)
    {
        if object_get_parent(object_index) != objPauseParent and object_index != objPauseParent and object_index != objGlobalControl
        {   
            instance_deactivate_object(self)
        }
    }

draw_set_alpha(0.5)
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

	if instance_exists(objEntpMedallionArrow) {
		with(objEntpMedallionArrow) draw_self()
	}
	
	if instance_exists(objEntpMedallionButton) {
		with(objEntpMedallionButton) draw_self()
	}

draw_sprite(sprItem, ds_list_find_value(global.item_pool, itm), room_width / 2, room_height / 2)

