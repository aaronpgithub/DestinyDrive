/// @description Insert description here
// You can write your code in this editor

draw_self()

var prys = pong_right_y - (pong_height / 2)
var plys = pong_left_y - (pong_height / 2)
var prya = pong_right_y + (pong_height / 2)
var plya = pong_left_y + (pong_height / 2)

if pong_right_y < road_y_min + pong_height / 2 pong_right_y = road_y_min + pong_height / 2
if pong_left_y < road_y_min + pong_height / 2 pong_left_y = road_y_min + pong_height / 2

if pong_right_y > road_y_max - pong_height / 2 pong_right_y = road_y_max - pong_height / 2
if pong_left_y > road_y_max - pong_height / 2 pong_left_y = road_y_max - pong_height / 2

if x < room_width / 2 and horz = -1 {
	pong_left_y = lerp(pong_left_y, y, 0.2)
	pong_left_drift = (y - yprevious) / 2
} else {
	pong_left_y += pong_left_drift
	pong_left_drift = lerp(pong_left_drift, 0.05 * sign(pong_left_drift), 0.1)
}

if x > room_width / 2 and horz = 1 {
	pong_right_y = lerp(pong_right_y, y, 0.2)
	pong_right_drift = (y - yprevious) / 2
} else {
	pong_right_y += pong_right_drift
	pong_right_drift = lerp(pong_right_drift, 0.05 * sign(pong_right_drift), 0.1)
}

draw_rectangle_color(4, plys, 4 + pong_width, plya, c_red, c_red, c_red, c_red, 0)

draw_rectangle_color(room_width - 8, prys, room_width - 8 + pong_width, prya, c_blue, c_blue, c_blue, c_blue, 0)