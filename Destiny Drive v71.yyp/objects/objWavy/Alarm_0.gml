/// @description Insert description here
// You can write your code in this editor
alarm[0] = irandom_range(200, 250)

var wavygravy, repetition, seed;
wavygravy = random_range(-5, 5) + point_direction(0, random_range(road_y_min, road_y_max), x, y) //angle
repetition = 0
seed = irandom(5)

repeat(5) {

	var wavy_bullet = instance_create(x, y, objWavyBullet)
	
	with(wavy_bullet) {
		angle = (5 * repetition) + wavygravy
		wave_bullet_t = 5 * (seed - repetition)
		sprite_index = sprBanditBullet
	}
	
	repetition += 1
}