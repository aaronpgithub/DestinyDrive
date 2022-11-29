function wave_create_practice() {
	for(var enemy_placement_y = 0; enemy_placement_y < 3; enemy_placement_y++) {
		for(var enemy_placement_x = 0; enemy_placement_x < 3; enemy_placement_x++) {
			if objPracticeControl.enemy_place[enemy_placement_x, enemy_placement_y] != -1 {
				var enemy_to_place = instance_create(184 + (52 * enemy_placement_y) + 200, 112 + (56 * enemy_placement_x), objPracticeControl.enemy_place[enemy_placement_x, enemy_placement_y])
		
				with(enemy_to_place) {
					pos_x = xstart - 200
					pos_y = ystart
				}
			}
		}
	}


}
