/// @description Insert description here
// You can write your code in this editor
movewithworm = false

if howlburst > 0 {

	alarm[0] = 3

	globalvar blasthowl, addhowl;
	blasthowl = 0
	addhowl = 0

	repeat(76) {
		addhowl = blasthowl * 4.65 + angle_at
	
			var howlblast = instance_create(x, y, objEnemyBullet)
	
			with(howlblast) {
				damage = 1
				angle = addhowl
				spd = 2
			}
	
		blasthowl++
	}

	angle_at += road_add
	
	howlburst--
} else {
	alarm[1] = room_speed * 2
	alarm[2] = room_speed * 2
}