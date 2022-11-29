/// @description Insert description here
// You can write your code in this editor

image_index = 0

if mouse_x < bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top {
	hover = true
} else hover = false

if instance_exists(objGameControl) hover = false