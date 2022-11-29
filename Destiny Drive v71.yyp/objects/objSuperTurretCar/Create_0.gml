event_inherited()

hp = round(120 * global.enemy_hp)
max_hp = hp
image_speed = 0
image_index = 0

burst_time = choose(100, 150)
burst = 0

alarm[6] = burst_time

alarm[5] = random_range(room_speed * 2, room_speed * 4)

