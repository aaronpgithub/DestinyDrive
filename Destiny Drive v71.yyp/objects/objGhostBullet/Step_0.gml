event_inherited()

y = ystart + lengthdir_y(len, t_angle)
x = xstart + lengthdir_x(len, t_angle)

len -= 1 * global.enemy_spd

t += 5 * global.enemy_spd
t = t mod 360
t_angle = 3 * sin(degtorad(t)) + angle

