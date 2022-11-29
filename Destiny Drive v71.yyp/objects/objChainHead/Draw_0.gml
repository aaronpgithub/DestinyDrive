var head_i;

for(head_i = 0; head_i < 9; head_i++) {
	if !instance_exists(objWastelandBully) exit;
	var waste_x, waste_y, distance_add;
	waste_x = objWastelandBully.x
	waste_y = objWastelandBully.y
	distance_add = point_distance(x, y, waste_x, waste_y) / 9
	
	draw_sprite(sprChainLink, 0, x + lengthdir_x(distance_add * head_i, point_direction(x, y, waste_x, waste_y)), y + lengthdir_y(distance_add * head_i, point_direction(x, y, waste_x, waste_y)))
}

draw_self();