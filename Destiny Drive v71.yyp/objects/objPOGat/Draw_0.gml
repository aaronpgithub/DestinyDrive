/// @description Insert description here
// You can write your code in this editor
event_inherited()

lerp_ang = lerp(lerp_ang, gat_ang + gat_start_ang, 0.7)
lerp_ang2 = lerp(lerp_ang2, gat_start_ang - gat_ang, 0.7)

if burst > 0 {
	draw_line_width_colour(mid_x, mid_y, mid_x + lengthdir_x(400, lerp_ang), mid_y + lengthdir_y(400, lerp_ang), 2, c_yellow, c_yellow)
	draw_line_width_colour(mid_x, mid_y, mid_x + lengthdir_x(400, lerp_ang2), mid_y + lengthdir_y(400, lerp_ang2), 2, c_yellow, c_yellow)
}