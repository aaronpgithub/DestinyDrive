/// @description Insert description here
// You can write your code in this editor

//Make the sprite of these bullets bigger, itll help
//Male them move faster and faster throughout the sezond half
alarm[6] = 6 * (2 / ill_speed)
globalvar indx; indx = irandom(10);

//plus one is simple way to avoid division by zero
ill_bullet_speed = clamp(2 * ((max_hp * 0.4) / hp), 2, 5)

if !instance_exists(objIllusionBulletBlock) {
	illusion_maze_create()
}

var imb_sw = sprite_get_width(sprIllusionMazeBullet), 
	imb_sh = sprite_get_height(sprIllusionMazeBullet);

for(var bull_x = 0; bull_x < 21; bull_x++) {
	var door = instance_create(bull_x * imb_sw, -imb_sh * 2, objIllusionMazeBullet)
	
	with(door) {
		sprite_index = sprIllusionMazeBullet
		image_index = indx
		spd = objCarriageOfIllusion.ill_speed
		angle = objCarriageOfIllusion.ill_angle
		outside_special = true
	}
	indx++
}

for(var bull_y = -1; bull_y < 16; bull_y++) {
	var door = instance_create(room_width, bull_y * imb_sh, objIllusionMazeBullet)
	
	with(door) {
		sprite_index = sprIllusionMazeBullet
		image_index = indx
		spd = objCarriageOfIllusion.ill_speed
		angle = objCarriageOfIllusion.ill_angle
		outside_special = true
	}
	indx++
}