
alarm[0] = random_range(40, 50)

var middle_x = x - (sprite_get_width(sprite_index) / 2), middle_y = y - (sprite_get_height(sprite_index) / 2);

var bird_egg = instance_create(middle_x, middle_y, objEggBullet)

with(bird_egg) {
	damage = 2
	angle = point_direction(middle_x, middle_y, objPlayer_x, objPlayer_y) + random_range(-5, 5)
	spd = 4 * global.enemy_spd
	image_angle = angle - 90
}

champion_bullet(bird_egg)