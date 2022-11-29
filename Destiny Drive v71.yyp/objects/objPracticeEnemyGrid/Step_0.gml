/// @description Insert description here
// You can write your code in this editor
//button_offset(objPracticeEnemySelectMenu) + 
offset = 2 + ((prac_enemy_id mod 2) * 32)

if sprite_exists(my_sprite) {
	var spw = sprite_get_width(my_sprite), sph = sprite_get_height(my_sprite);
	
	if spw > sph {
		praxscale = clamp(26 / spw, 0, 1)
		prayscale = praxscale
		
		sprite_off_x = (32 - (spw * praxscale)) / 2
		sprite_off_y = (32 - (sph * prayscale)) / 2
	} else {
		prayscale = clamp(26 / sph, 0, 1)
		praxscale = prayscale
		
		sprite_off_x = (32 - (spw * praxscale)) / 2
		sprite_off_y = (32 - (sph * prayscale)) / 2
	}
}

y = ystart + 1 + objPracticeEnemySelectMenu.scroll_amt