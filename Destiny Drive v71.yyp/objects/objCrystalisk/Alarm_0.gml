alarm[0] = room_speed * 1.5

var snwflk_inst = instance_create(x - 50, y, objEnemySnowflake)

with(snwflk_inst)
{
inacc = random_range(-13, 13)
spd = -0.3 * global.enemy_spd
damage = 1
}

champion_bullet(snwflk_inst)

