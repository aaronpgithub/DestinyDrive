event_inherited()

t_v = 0
t_h = 0
h_amp = random_range(-150, -200)
v_amp = random_range(-10, -110)

x_d = point_distance(x, y, 5, 5) * 1.1
x_p = point_direction(x, y, objPlayer_x, objPlayer_y)

follow = false

draw_curse = false

no_move_destroy = false

outside_special = true

image_index = irandom(image_number - 1)