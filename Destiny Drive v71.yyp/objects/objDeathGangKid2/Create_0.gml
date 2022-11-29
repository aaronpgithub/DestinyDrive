event_inherited()

hp = 550 * global.enemy_hp
max_hp = hp

randomnessx = choose(random_range(-48, -58), random_range(38, 44))
randomnessy = choose(random_range(-48, -58), random_range(48, 58))

alarm[5] = room_speed * 2

burst = irandom_range(4, 8)

champ = c_white

alarm[6] = room_speed * random_range(2, 7)

