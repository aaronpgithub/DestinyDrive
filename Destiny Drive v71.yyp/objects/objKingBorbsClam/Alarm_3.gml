alarm[3] = random_range(260, 300)

var gogleld = instance_create(x, y, objEnemyBullet)

with(gogleld)
{
damage = 3
spd = 1.5 * global.enemy_spd
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-16, 16)
sprite_index = sprEnemyPearl
}

champion_bullet(gogleld)

