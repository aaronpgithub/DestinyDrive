/// @description Expanding cricles
// You can write your code in this editor
alarm[5] = 48

if transition_amount >= 1 or alarm[0] < room_speed * 5 exit;

globalvar evilness; evilness = false

mini_spiral_sign = -(mini_spiral_sign)

var md = instance_create(420, road_y_mid + random_range(60, 80) * mini_spiral_sign, objIllusionMiniCircle)

if evil_count <= 0 {
	if mini_spiral_sign = -1 {
		if objPlayer_y < road_y_mid {
		evilness = true
		evil_count = 4
		}
	} else {
		if objPlayer_y > road_y_mid {
		evilness = true
		evil_count = 4
		}
	}
}

with(md) {
	if evilness = true evil = true
}

evil_count--