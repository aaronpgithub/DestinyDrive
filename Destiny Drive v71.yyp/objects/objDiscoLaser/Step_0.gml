/// @description Insert description here
// You can write your code in this editor
event_inherited()

len_colla = lerp(len_colla, 360, 0.2)

if image_xscale != 100 exit;

image_yscale -= (0.035 * yscale) * scale_spd
if image_yscale <= 0 instance_destroy()

hue += 1

hue = hue mod 255

