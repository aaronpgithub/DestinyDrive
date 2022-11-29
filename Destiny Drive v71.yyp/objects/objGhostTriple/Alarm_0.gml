/// @description Insert description here
// You can write your code in this editor
alarm[0] = 4

globalvar ghosttang, ghosttrip, angaddamt;
ghosttang = sin(degtorad(triplet)) * 30
angaddamt = 20
ghosttrip = -angaddamt

repeat(3) {
	var tripleg = instance_create(x, y, objFadeBullet)

	with(tripleg) {
		alarm[0] = -1
		damage = 1
		angle = ghosttang + ghosttrip
		spd = -1	

		image_angle = angle

		sprite_index = sprGhostBullet
	}
	ghosttrip += angaddamt
}

if point_direction(x, y, objPlayer_x, objPlayer_y) < 125 or point_direction(x, y, objPlayer_x, objPlayer_y) > 230 {
	var tripleg = instance_create(x, y, objFadeBullet)

	with(tripleg) {
		alarm[0] = -1
		damage = 1
		angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 180
		spd = -1	

		image_angle = angle

		sprite_index = sprGhostBullet
	}
}