///@param attack_param
function prac_param(argument0) {

	if global.practice = true and instance_exists(objPracticeControl) {
		if objPracticeControl.settings_array[1, 4] = argument0 {
			return true
		} else return false
	}


}
