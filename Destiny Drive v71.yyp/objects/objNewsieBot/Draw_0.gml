/// @description Insert description here
// You can write your code in this editor
draw_self()

if warning and alarm[0] > 0 and leave = false {
		draw_line_width_color(x, y, x + lengthdir_x(350, my_angle_news), y + lengthdir_y(350, my_angle_news), cool_width, c_white, c_white)
}
	if blast_off = true {
		blast_alp -= 0.1
		cool_width += 1
		draw_set_alpha(blast_alp)
		draw_line_width_color(x, y, x + lengthdir_x(350, my_angle_news), y + lengthdir_y(350, my_angle_news), cool_width, c_white, c_white)
		draw_set_alpha(1)
	}