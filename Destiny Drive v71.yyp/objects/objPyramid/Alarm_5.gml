/// @description Insert description here
// You can write your code in this editor

if !instance_exists(objPyramidCenter) {
	repeat(300) {
		var bloool = instance_create(x, y, objPyramidCenter)
	
		with(bloool) {
			damage = 1
			spd = 0
			len = random_range(480, 590)
		}
	}
	alarm[5] = 80
} else {
	globalvar time_s;
	time_s = 2
	alarm[5] = room_speed * time_s
	
	var grise = instance_create(x, y, objPyramidWall) 
	
	with(grise) {
		damage = 1
		time = time_s
	}
}