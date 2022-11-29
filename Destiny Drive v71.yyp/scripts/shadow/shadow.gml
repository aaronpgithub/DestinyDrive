///@param shadow_height
///@param drawing_self
///@param sprite
///@param index
///@param x
///@param y
///@param angle
function shadow() {

	var drawing_self = true, sprite_to_draw = sprite_index, index_to_draw = image_index, x_draw_at = x, y_draw_at = y, angle_draw_at = 0;

	if argument_count > 1 {
		drawing_self = argument[1]
		sprite_to_draw = argument[2]
		index_to_draw = argument[3]
		x_draw_at = argument[4]
		y_draw_at = argument[5]
	}

	if argument_count > 6 {
		angle_draw_at = argument[6]
	}

	if !sprite_exists(sprite_index) and drawing_self = true exit;

		if instance_exists(objGameControl)
	    {
	    if drawing_self = true draw_self()
    
	    surface_set_target(global.surface_shadow)
    
	    var shadow_height_var;
    
	    shadow_height_var = argument[0]
    
	    draw_sprite_ext(sprite_to_draw, index_to_draw, x_draw_at, y_draw_at + shadow_height_var, image_xscale, -(image_yscale), angle_draw_at, c_black, 1)
	
	    surface_reset_target()
    
	    }
	    else
	    {
	    var shadow_height_var;
    
	    shadow_height_var = argument[0]
    
	    draw_sprite_ext(sprite_to_draw, index_to_draw, x_draw_at, y_draw_at + shadow_height_var, image_xscale, -(image_yscale), angle_draw_at, c_black, 0.3)
	
	    if drawing_self = true draw_self()
	    }



}
