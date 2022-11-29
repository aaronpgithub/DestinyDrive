event_inherited()

draw_sprite(sprPOTurret, 0, x - 7, y - 13)

flang_tim--

if flang_tim <= 0 {
	fl_ang += 25
	flang_tim = 20
}

fl_alp = (burst_time - alarm[6]) / burst_time

draw_sprite_ext(sprPOTurretCarFlash, 0, x - 14, y - 27, 1, 1, fl_ang, c_white, fl_alp)
draw_set_alpha(power(2, 2 * fl_alp - 1) - 1)
var wl_xx = x - 12, wl_yy = y - 27, ang_pow = power(2, 4 * fl_alp - 3) - 1;
draw_line_width_color(wl_xx, wl_yy, wl_xx + lengthdir_x(400, point_direction(wl_xx, wl_yy, objPlayer_x, objPlayer_y) + (random_range(-2, 2) * ang_pow)), wl_yy + lengthdir_y(400, point_direction(wl_xx, wl_yy, objPlayer_x, objPlayer_y) + (random_range(-2, 2) * ang_pow)), 2, c_white, c_white)
draw_set_alpha(1)