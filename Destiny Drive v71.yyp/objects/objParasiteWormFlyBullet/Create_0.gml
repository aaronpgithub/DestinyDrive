/// @description Insert description here
// You can write your code in this editor
event_inherited()

y_sine = 0
x_sine = 0
x_sine_t = random(360)
y_sine_t = random(360)
ytad = random_range(3, 6)
xtad = random_range(3, 6)

no_move_destroy = false

special_move = true

if instance_exists(objParasiteWorm) {
	x = objParasiteWorm.x
	y = objParasiteWorm.y
}

len = 0