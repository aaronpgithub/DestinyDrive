/// @description Insert description here
// You can write your code in this editor

draw_self()

var ratio = alarm[4] / shoot_start
var colrat = 1.2^(255 * ratio) - 7

var colo = make_color_hsv(170, 0 + colrat, 230)
var colo2 = make_color_hsv(170, 0 + colrat, 255)

if image_xscale != 100 draw_line_width_color(x, y, x + lengthdir_x(-(len_colla), angle), y + lengthdir_y(-(len_colla), angle), 3, colo, colo2)