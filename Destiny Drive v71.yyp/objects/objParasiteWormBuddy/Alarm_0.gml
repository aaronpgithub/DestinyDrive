/// @description Insert description here
// You can write your code in this editor
if follower = false {
	if burst > 0 {
		alarm[0] = 15
	
		globalvar anglglbl, sast;
		anglglbl = bubbleang
		sast = shootatsametime
	
		var blb = instance_create(x, y, objParasiteWormBuddyBubble)
	
		with(blb) {
			damage = 1
			angle = anglglbl
			spd = -1
			if instance_exists(objParasiteWormBuddyBubble) {
				if sast = true alarm[0] = objParasiteWormBuddyBubble.alarm[0]
			}
		}
	
		burst--
	} else {
		pos_x = 400
	}
} else {
	alarm[0] = 18
	
	var shootyt = instance_create(x, y, objEnemyBullet)
	
	with(shootyt) {
		damage = 1
		angle = point_direction(x, y, objPlayer_x, objPlayer_y)
		spd = 3
		
		sprite_index = sprAcidBullet
	}
}