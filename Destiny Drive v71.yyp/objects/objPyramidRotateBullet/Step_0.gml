/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(light_id) {
	if light_id.alarm[0] < 10 {
		act_length = lerp(act_length, 0, 0.3)
	} else act_length = lerp(act_length, length, 0.1)
x = objPyramidLight.x + lengthdir_x(act_length, light_id.angle)
y = objPyramidLight.y + lengthdir_y(act_length, light_id.angle)
} else {
	instance_destroy()
}