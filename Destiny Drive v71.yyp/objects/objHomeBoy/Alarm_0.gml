alarm[0] = room_speed * 1.5

var homeboy_inst = instance_create(x, y, objEnemyRocket);

with(homeboy_inst)
{
spd = random_range(2, 3)
angle = random_range(-45, 45)
}

champion_bullet(homeboy_inst)

