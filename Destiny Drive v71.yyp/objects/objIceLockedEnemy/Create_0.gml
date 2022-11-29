event_inherited()

hp = round(270 * global.enemy_hp)
max_hp = hp

image_speed = 0.02
image_index = random(image_number)
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
len = 0

goes_up = true

