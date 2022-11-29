/// @description Insert description here
// You can write your code in this editor

globalvar circle_num, circle_max, my_id_circle, m_mult; circle_num = 0; circle_max = 8; my_id_circle = id; m_mult = 1;

var rep_amt = 3;

if evil = true {
	rep_amt = 1
	circle_max = 36
	color_circle = 255
}

repeat(circle_max) {
	
	repeat(rep_amt) {
		
		var mini_sp = instance_create(x, y, objIllusionMiniCircleBullet)
	
		with(mini_sp) {
			damage = 1
			mini_spiral_angle_start = circle_num * (360 / circle_max)
			follow_mini = my_id_circle
			movement_mult = m_mult
		}
		
		m_mult -= 0.1
	}
	circle_num++
	m_mult = 1
}
