/// @description Insert description here
// You can write your code in this editor
alarm[0] = wait_zig

angle_set = -angle_set

spd = -2
angle = angle_set

if fastburst > 0 {
	fastburst--
	alarm[0] = 5
}
