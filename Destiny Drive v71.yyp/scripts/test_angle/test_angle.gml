///@param *X
///@param *Y
function test_angle() {

	if !instance_exists(objGlobalControl) exit;

	var angle_test_x = x, angle_test_y = y, angle_check = objGlobalControl.angle_checker;

	if argument_count >= 2 {
		angle_test_x = argument[0]
		angle_test_y = argument[1]
	}

	objGlobalControl.angle_checker = point_direction(angle_test_x, angle_test_y, objPlayer_x, objPlayer_y)

	draw_text_outline_ext(string(angle_check), 2, 2, 0, c_white)

	draw_line_width_color(angle_test_x, angle_test_y, angle_test_x + lengthdir_x(1000, angle_check), angle_test_y + lengthdir_y(1000, angle_check), 1, 0, 0)


}
