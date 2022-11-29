//part_emitter_destroy_all(global.part_sys)
//part_system_clear(global.part_1)
    
if surface_exists(pause_surface) and pause_screen = false
{    
surface_set_target(pause_surface)

shader_set(solidalpha)
draw_surface_stretched(application_surface, 0, 0, 320, 256)
shader_reset()

if instance_exists(objDarkness) {
	if surface_exists(objDarkness.darksurf) {
		draw_surface(objDarkness.darksurf, 0, 0)
	}
}

    with(all) {
        if object_get_parent(object_index) != objPauseParent and object_index != objPauseParent and object_index != objGlobalControl
        {
			#region
			
			event_perform(ev_other, ev_user0)

			#endregion
        instance_deactivate_object(self)
        }
    }


surface_reset_target()

pause_screen = true
}

draw_surface(pause_surface, 0, 0)

draw_set_alpha(0.5)
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

with(objPauseParent) {
    if object_index != objPauseControl depth = -10000000
        if object_index = objPauseItem depth = -10000005
}

if pause = true
{
draw_set_halign(fa_center)
draw_text_outline("CLICK ON THE CIRCLE TO RESUME", room_width / 2, 30)
draw_set_halign(fa_left)
}

draw_set_halign(fa_left)
draw_text_outline(time_var, 5, 5)
	

/*
part_emitter_destroy_all(global.part_sys)
part_system_clear(global.part_1)

if surface_exists(pause_surface)
{
surface_set_target(pause_surface)

    with(all)
    {
        if object_get_parent(object_index) != objPauseParent and object_index != objPauseParent and object_index != objGlobalControl
        {
        
            if sprite_exists(sprite_index)
            {
            draw_self();
            }
            
            event_perform(ev_draw, 0)
            
            with(objGameControl)
            {
            event_perform(ev_draw, 0)
            }
            
            instance_deactivate_object(self)
        }
    }
    
surface_reset_target()

draw_surface(pause_surface, 0, 0)
}

draw_set_alpha(0.5)
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

if pause = true
{
draw_set_halign(fa_center)
draw_text_outline("CLICK ON THE CIRCLE TO RESUME", room_width / 2, 30)
draw_set_halign(fa_left)
}

/* */
/*  */
