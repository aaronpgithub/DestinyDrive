event_inherited()

hp_set(40)

burst_time = choose(150, 200)
burst = 0

firstalarm = irandom_range(35, 50)

alarm[6] = firstalarm

angle_inacc = 0
angle_orientation = 1
angle_shoot_at = point_direction(objPlayer_x, objPlayer_y, x, y)