///@param warning_x
///@param warning_time
function player_too_close(argument0, argument1) {

	if objPlayer_x < argument0
	{
		warning_timer = argument1
		return false;
	} else if warning_timer <= 0 {
		return true;
	}


}
