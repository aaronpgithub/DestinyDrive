/// @description Insert description here
// You can write your code in this editor
alarm[5] = 30

repeat(irandom_range(3, 5)) {
		var imangry = instance_create(x + random_range(-16, 16), y + random_range(-10, 10), objEnemyBullet)
		
		with(imangry) {
			damage = 1
			angle = 90
			spd = -3 * global.enemy_spd
			sprite_index = sprEyeOfTheStormRain
		}
}