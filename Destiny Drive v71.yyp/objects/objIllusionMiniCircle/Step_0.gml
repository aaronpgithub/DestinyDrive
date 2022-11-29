/// @description Insert description here
// You can write your code in this editor
if alarm[0] <= alarm_len {
	contract = lerp(contract, 120, 0.02)
} else contract = lerp(contract, 10, 0.02)

//rotate_ang += 0.25 * r_dir

x -= 1

if x <= -100 instance_destroy()