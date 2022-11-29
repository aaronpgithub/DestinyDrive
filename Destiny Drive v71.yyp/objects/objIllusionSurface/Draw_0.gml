/// @description Insert description here
// You can write your code in this editor
surface_set_target(crazysurface)

if instance_exists(objIllusionCircle) {
	with(objIllusionCircle) {
		draw_self()
	}
}

if instance_exists(objPlayer) {
	with(objPlayer) {
		draw_self()
	}
}

surface_reset_target()

draw_surface_ext(crazysurface, 0, 0, 1, 1, 0, c_white, image_alpha)

if !instance_exists(objCarriageOfIllusion) instance_destroy()