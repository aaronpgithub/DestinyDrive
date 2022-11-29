/// @description Insert description here
// You can write your code in this editor
if instance_exists( instance_find(objBulletDelete, id_reach_it + 1) ) {
	var grprp = instance_find(objBulletDelete, id_reach_it + 1)
	image_angle = point_direction(x, y, grprp.x, grprp.y)
	image_xscale = point_distance(x, y, grprp.x, grprp.y) / 32
}

if instance_exists(objBulletDelete) {
	x = id_follow_pyr.x
	y = id_follow_pyr.y
}