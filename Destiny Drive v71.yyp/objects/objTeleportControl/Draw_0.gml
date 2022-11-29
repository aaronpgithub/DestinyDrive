if surface_exists(global.tele_surf) {
	draw_surface(global.tele_surf, 0, 0)
	
	surface_set_target(global.tele_surf) 
	draw_clear_alpha(c_black, 0)
	surface_reset_target()
} else {
	global.tele_surf = surface_create(room_width, room_height)
}