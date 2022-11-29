//shooting at you during acid waves

alarm[7] = 45

var shtatudra = instance_create(x, y, objEnemyBullet)

with(shtatudra)
{
damage = 1
angle = point_direction(x, y, objPlayer_x, objPlayer_y)
spd = 4 * global.enemy_spd
image_angle = angle
sprite_index = sprAcidBullet
}

