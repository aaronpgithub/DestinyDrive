/// @description Insert description here
// You can write your code in this editor

event_inherited()

hp = round(70 * global.enemy_hp)
max_hp = hp

image_speed = 0.02
image_index = random(image_number)
angle_start = 180 + random_range(-20, 20)
len = 0

if y < 120 and y > 105 angle_start = 180 + random_range(0, 20)
if y < 230 and y > 218 angle_start = 180 + random_range(-20, 0)


angle = angle_start

lock_xoff = 9
lock_yoff = 10