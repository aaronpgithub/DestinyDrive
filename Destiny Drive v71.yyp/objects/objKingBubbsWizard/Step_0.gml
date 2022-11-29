/// @description Insert description here
// You can write your code in this editor

if instance_exists(objKingBubbs) {
	if objKingBubbs.transition_timer > 0 {
		wizard_leave = true
		exit;
	}
	objKingBubbs.alarm[0] = 50
}

if point_distance(x, y, wizard_xpos, wizard_ypos) < 5 {
	at_point = true
}

if at_point = false {
	alarm[0] = 50
	
	if wizard_attack_choice = 3 alarm[0] = 5
}

	wizard_t += 1
	wizard_t = wizard_t mod 360
	x = lerp(x, wizard_xpos, 0.075)
	y = lerp(y, wizard_ypos + (sin(degtorad(wizard_t)) * 6), 0.075)
	
if wizard_leave = true {
	leave_x_spd += 0.5
	leave_y_spd += 0.1
	wizard_xpos -= leave_x_spd
	wizard_ypos -= leave_y_spd
	
	if x <= 0 instance_destroy()
}