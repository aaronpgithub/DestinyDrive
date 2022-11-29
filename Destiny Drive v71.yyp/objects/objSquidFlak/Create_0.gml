event_inherited()

alarm[0] = room_speed * (2 * global.enemy_spd)
spd = -3 * global.enemy_spd
angle = point_direction(x, y, 0, road_random()) + 180

image_angle = angle

cutoff = random_range(80, 100)

no_move_destroy = false