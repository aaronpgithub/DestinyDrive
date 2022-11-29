/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(objSacrificeGod) {
x = lerp(x, square_x, 0.2)
y = lerp(y, square_y, 0.2)
} else {
x = lerp(x, xstart, 0.2)
y = lerp(y, ystart, 0.2)

	outside_special = false

}

depth = -100