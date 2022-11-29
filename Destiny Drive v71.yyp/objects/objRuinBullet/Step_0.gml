/// @description Insert description here
// You can write your code in this editor
event_inherited()

if x < 0 instance_destroy()

if image_xscale < 1 image_xscale += 0.1
image_yscale = image_xscale

fake_angle += angle_speed

real_position -= spd

x = lerp(x, real_position, 0.4)
y = lerp(y, ystart, 0.4)

if !instance_exists(objRuinGod) instance_destroy()