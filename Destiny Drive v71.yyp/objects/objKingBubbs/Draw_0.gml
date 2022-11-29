/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if warning_timer < 85 {
	draw_sprite(sprWarning, 0, objPlayer_x + 12, objPlayer_y + 12)
	draw_line_width_color(x - (sprite_width / 2), y - (sprite_height / 2), objPlayer_x, objPlayer_y, 2, c_red, c_red)
}