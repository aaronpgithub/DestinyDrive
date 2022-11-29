event_inherited()

t_v = 0
t_h = 0
h_amp = random_range(-230, -300)
v_amp = random_range(-40, -180)

x_d = point_distance(x, y, objPlayer_x, objPlayer_y) * 1.1
x_p = point_direction(x, y, objPlayer_x, objPlayer_y)

follow = false

draw_curse = false

