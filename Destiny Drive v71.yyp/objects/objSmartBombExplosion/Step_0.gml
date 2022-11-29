/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale = lerp(image_xscale, 0, 0.25)
image_yscale = image_xscale

if image_xscale <= 0 instance_destroy()