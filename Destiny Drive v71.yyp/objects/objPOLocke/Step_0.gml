/// @description Insert description here
// You can write your code in this editor

event_inherited()

if collision_line(x - lock_xoff, y - lock_yoff, x + lengthdir_x(len, angle), y + lengthdir_y(len, angle), objPlayer, true, true) = noone {
alarm[6] = 2
}