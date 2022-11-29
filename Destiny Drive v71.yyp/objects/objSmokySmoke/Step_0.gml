/// @description Insert description here
// You can write your code in this editor
if image_xscale < 1 image_xscale += 0.1
image_yscale = image_xscale

if instance_exists(objRuinGod) {
	x -= objRuinGod.spd
	if image_alpha < 0.94 image_alpha += 0.004
} else {
	image_alpha -= 0.1
	if image_alpha < 0 instance_destroy()
}

depth = -10000