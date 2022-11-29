/// @description Y Move
// You can write your code in this editor

if transition_amount >= 1 exit;

alarm[2] = 36

globalvar wallill;
var wallrem = irandom_range(2, 9)
wallill = 0

repeat(13) {
	if wallrem != wallill {
		var bublel = instance_create(room_width + random_range(0, 7), half_y, objYMoveBullet)

		with(bublel) {
			spd = -2
			angle = 0
			damage = 1 
			outside_special = true
			uYpos = wallill * 12 - 64
		}
	}
	
	wallill += 1
}