/// @description Insert description here
// You can write your code in this editor

if witch_burst = 0 { //if hasnt shot
	if witch_reload = false { //shooting
		witch_burst = 10
		alarm[0] = 15
	} else { //done shooting
		alarm[0] = room_speed * irandom_range(5, 9)
			if instance_exists(objSacrificeGod) {
				objSacrificeGod.invert = choose(1, -1)
			}
			witch_reload = false
	}
} else {
	alarm[0] = 5
	
	repeat(2) { //shooting!
		var witch_bul = instance_create(x, y, objEnemyBullet)
		
			with(witch_bul) {
				damage = 1
				spd = -(random_range(1.5, 2)) * global.enemy_spd
				angle = random_range(-25, 25)
			}
	}
	
	witch_burst--
	
	if witch_burst = 0 { //reload
		witch_reload = true
		alarm[0] = room_speed * 2
	}
}