/// @description Insert description here
// You can write your code in this editor
event_inherited()

if !instance_exists(objPyramid) exit;

angle += 1

image_angle = angle

x = objPyramidLight.x + lengthdir_x(len, angle)
y = objPyramidLight.y + lengthdir_y(len, angle)

	if objPyramid.attack_choice != 4 {
		len += 5
		if len > 500 instance_destroy()
	} else len = lerp(len, randlen, ranler)