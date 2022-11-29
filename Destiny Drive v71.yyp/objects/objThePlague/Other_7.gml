/// @description Insert description here
// You can write your code in this editor
if sprite_index = sprThePlagueAngry {
	transition_timer = 1
	image_alpha = 0
	draw_shadow = false
	wait_amount = 3
	instance_create(mid_x, mid_y, objPlagueTeleport)
	surface_free(plague_surface)
	tele_x = mid_x
	tele_y = mid_y
}
