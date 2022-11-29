/// @description Insert description here
// You can write your code in this editor
event_inherited()

if lerp_it = true {
	len_colla = lerp(len_colla, 360, 0.15)
} else len_colla = 360

if image_xscale != 100 exit;

image_yscale -= (0.035 * yscale) * scale_spd
if image_yscale <= 0 instance_destroy()