///@param min_alarm
///@param max_alarm
///@param alarm_time
function set_all_alarms(argument0, argument1, argument2) {

	var min_alarm = argument0, max_alarm = argument1, alarm_time = argument2;

	for(var alarm_to_set = min_alarm; alarm_to_set <= max_alarm; alarm_to_set++) {
		alarm[alarm_to_set] = alarm_time
	}


}
