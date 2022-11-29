function button_offset(argument0) {
	var menu_of_button = argument0;

	if instance_exists(menu_of_button) and instance_exists(objPracticeControl) {
		return objPracticeControl.lerp_menu + (-(menu_of_button.max_width) + menu_of_button.real_width)
	}


}
