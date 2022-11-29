/// @description Insert description here
// You can write your code in this editor
if global.temple_level = "ruin" {
	x = lerp(x, room_width, 0.1)
} else {
	image_alpha -= 0.1
	if image_alpha <= 0 instance_destroy()
}



if alarm[0] <= 0 and alarm[1] = 48 {//(alarm[1] >= 28 and alarm[1] <= 30) {
		alarm[0] = irandom_range(60, 320)//irandom_range(30, 180) * (2 - spd)

	#region //setting direction
	var found_array = false

	for(var finder = 0; finder < 10; finder++) {
		if dir_array[finder] != "" {
			ruin_direction = dir_array[finder]
			found_array = true
			dir_array[finder] = ""
		}
	}

	if found_array = false {
		for(var setter = 0; setter < 10; setter++) {
				dir_array[setter] = dir_array_next[setter]
		}
	
		for(var ap = 0; ap < 10; ap++) {
		var ups = 0, downs = 0;
		if dir_array[ap] = "up" ups += 1
		if dir_array[ap] = "down" downs += 1
		}

		ty = 0

		repeat(10) {
			var choice = random(1)
			if choice < ups / 10 {
				dir_array_next[ty] = "up"
			} else {
				dir_array_next[ty] = "down"
			}
			ty++
		}
		ruin_direction = dir_array[0]
		dir_array[0] = ""
	}
	#endregion

	var dir_numb = -1
	if ruin_direction = "up" dir_numb = 1

	var ruin_new_position = irandom_range(16, 96) * dir_numb

	var _ruin_position = ruin_position

	for(var doi = abs(ruin_new_position - _ruin_position) / 24; doi > 0; doi--) {
		_ruin_position += 24 * dir_numb //setting position if it is out of bounds
		if _ruin_position > road_y_max - 56 _ruin_position = road_y_min + 22
		if _ruin_position < road_y_min + 22 _ruin_position = road_y_max - 56
	}

	for(var doi2 = abs(ruin_position - _ruin_position) / 24; doi2 >= 0; doi2--) {
		var dir_pos = sign(ruin_position - _ruin_position)
		ruin_position -= 24 * dir_pos
		instance_create(ruin_x_position, ruin_position, objRuinBulletBlock)
	}

	alarm[1] = 1
}