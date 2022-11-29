/// @description Insert description here
// You can write your code in this editor
alarm[4] = 3

t += tdir

globalvar gremlin;
gremlin = corcid

if t = 3 {
	switch(prevcirc) {
	case "up":
	var trpop = instance_create(room_width + random_range(-20, 20), road_y_mid - (random_range(-60, -10)), objBulletDelete)
	with(trpop) {
		clrelish = gremlin
	}
	prevcirc = "down"
	break;
	case "down":
	var trpop2 = instance_create(room_width + random_range(-20, 20), road_y_mid - (random_range(60, 10)), objBulletDelete)
	with(trpop2) {
		clrelish = gremlin
	}
	prevcirc = "up"
	break;
	}
	corcid++
}

if instance_exists(objBulletDelete) {
	for(var drop = 0; drop < 15; drop++) {
		if alarm[0] < 10 or alarm[0] > (room_speed * 10) - 10 break;
			var nero = instance_create(room_width, road_y_min + (drop * 12), objEnemyBullet)
		
			with(nero) {
				damage = 1
				angle = 0
				spd = -2 * global.enemy_spd
			}
	}
}
