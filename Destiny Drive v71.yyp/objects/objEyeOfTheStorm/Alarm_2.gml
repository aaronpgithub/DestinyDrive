/// @description cloud lightning
// You can write your code in this editor
alarm[2] = 5

globalvar cloudang;
cloudang = point_direction(cloud_pos_x, cloud_pos_y, 90, road_y_min + 90)

var cloudbul = instance_create(cloud_pos_x + lengthdir_x(-30, cloudang), cloud_pos_y + lengthdir_y(-30, cloudang), objEnemyBullet)

with(cloudbul) {
	spd = random_range(1, 2)
	damage = 1
	angle = cloudang + random_range(-50, 50)
	
	sprite_index = sprSimpleLightning
	image_angle = angle
}

