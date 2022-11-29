/// @description Insert description here
// You can write your code in this editor
alarm[0] = 180

globalvar anglesets;
anglesets = choose(-40, 40)

var counter = 0;

	var yzig = road_y_min + random_range(60, 100)
	
	if anglesets = 40 yzig = road_y_min + random(70)

repeat(3) {
	yzig += 12
	
		var ziggyy = instance_create(room_width, yzig, objZigZagBullet)

		with(ziggyy) {
			damage = 1
			angle_set = anglesets
			angle = angle_set
			spd = -4
			wait_zig = 30
			alarm[0] = wait_zig
		}
	counter++
}