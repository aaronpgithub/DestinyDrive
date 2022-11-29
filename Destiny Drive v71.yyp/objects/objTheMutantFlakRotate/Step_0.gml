/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

angle += rotate_speed
len += 1 * global.enemy_spd

lerp_ang = lerp(lerp_ang, len, 0.5)

x = xstart + lengthdir_x(lerp_ang, angle)
y = ystart + lengthdir_y(lerp_ang, angle)

if len > 350 instance_destroy()