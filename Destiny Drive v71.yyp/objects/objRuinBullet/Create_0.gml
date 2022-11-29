/// @description Insert description here
// You can write your code in this editor
event_inherited()

spd = 0
angle = 0
real_position = xstart

outside_special = true
no_move_destroy = false

x += random_range(20, 40)
y += random_range(-20, 20)

image_speed = 0

fake_angle = random(360)
alpha_ruin = random_range(0.5, 1)
image_alpha = alpha_ruin

image_xscale = 0

angle_speed = random_range(-5, 5)

spd = 1

if instance_exists(objRuinGod) spd = objRuinGod.spd