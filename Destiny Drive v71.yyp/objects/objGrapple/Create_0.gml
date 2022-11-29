/// @description Insert description here
// You can write your code in this editor

globalvar bullet_pos, grapple_angle, grapple_id, movement;
bullet_pos = 0
grapple_id = id
movement = choose(1, -1)

grapple_angle = point_direction(x, y, 0, road_random())

alarm[0] = 200

repeat(20) {
	
	var grapple_bullet = instance_create(x, y, objGrapplerBullet) 
	
	with(grapple_bullet) {
		len_end = bullet_pos * 16
		angle = grapple_angle
		grapple_id_follow = grapple_id
		grapple_movement = movement
	}
	
	movement = -(movement)
	
	bullet_pos++
}