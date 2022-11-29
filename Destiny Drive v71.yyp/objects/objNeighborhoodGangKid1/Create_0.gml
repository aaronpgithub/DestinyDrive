event_inherited()

hp = 250 * global.enemy_hp
max_hp = hp

randomnessx = choose(random_range(-20, -35), random_range(20, 35))
randomnessy = choose(random_range(-20, -35), random_range(20, 35))

alarm[5] = room_speed * 2

burst = irandom_range(4, 10)

champ = c_white

alarm[6] = room_speed * random_range(2, 7)

