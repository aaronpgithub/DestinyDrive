/// @description Insert description here
// You can write your code in this editor

if surface_exists(background_surf) {
	
	#region clearing surface if GameControl exists
	if instance_exists(objGameControl) {
		surface_set_target(background_surf)
		
		draw_clear_alpha(c_black, 0)
		
		surface_reset_target()
	}
	#endregion
	
draw_surface(background_surf, 0, 0)
} else background_surf = surface_create(room_width, room_height)