/// @description Insert description here
// You can write your code in this editor
event_inherited()

if light = false {
draw_self()
} else {
	shader_set(flash_shader_universal)
	draw_self()
	shader_reset()
}