/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if transition_amount >= 1 {
	illusion_val += 1
	illusion_val = illusion_val mod 360
	
	illusion_val_sin = abs(sin(degtorad(illusion_val)));
	
	if surface_exists(illusion_surface) {
		
		var il_c = make_color_hsv(220 - illusion_val_sin * 20, 210 - (60 * illusion_val_sin), 255 * illusion_val_sin)
		
		surface_set_target(illusion_surface)
		
		draw_rectangle_color(0, 0, room_width, room_height, il_c, il_c, il_c, il_c, 0)
		
		surface_reset_target()
		
	} else illusion_surface = surface_create(room_width, room_height)
}