/// @description Insert description here
// You can write your code in this editor

alarm[0] = 20

globalvar spiral_num, spiral_max, my_id_mini; spiral_num = 0; spiral_max = 7; my_id_mini = id;

repeat(spiral_max) {
	var mini_sp = instance_create(x, y, objIllusionMiniSpiralBullet)
	
	with(mini_sp) {
		damage = 1
		mini_spiral_angle_start = my_id_mini.rotation + spiral_num * (360 / spiral_max)
		follow_mini = my_id_mini
	}
	
	spiral_num++
}