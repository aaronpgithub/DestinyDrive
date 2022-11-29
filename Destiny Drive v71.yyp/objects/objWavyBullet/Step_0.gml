/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

depth = -1000

x = xstart + lengthdir_x(-wave_bullet_len, angle)
y = ystart + lengthdir_y(-wave_bullet_len, angle)

spd = 2 * sin(degtorad(wave_bullet_t))

wave_bullet_t += 4
wave_bullet_t = wave_bullet_t mod 360

if spd < 0 spd /= 5

wave_bullet_len += spd