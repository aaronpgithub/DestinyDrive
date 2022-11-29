/// @description Insert description here
// You can write your code in this editor
event_inherited()

if spd = 0 {
	x = lerp(x, xstart - 200, ill_l_spd)
	y = lerp(y, ystart, ill_l_spd)
	
	image_xscale = lerp(image_xscale, 1, ill_l_spd)
	image_yscale = lerp(image_yscale, 1, ill_l_spd)
}

if alarm[0] < 15 and not_real = true image_alpha -= 0.075

if image_alpha <= 0 instance_destroy()