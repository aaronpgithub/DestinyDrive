t += 1.5 * global.enemy_spd
angle = 20 * sin(degtorad(t)) + angle_start

len += 1 * global.enemy_spd

x = xstart + lengthdir_x(len, angle)
y = ystart + lengthdir_y(len, angle)

