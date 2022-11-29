function only_enemy() {
	var is_only_enemy_type = true;

	for(var enms = 0; enms < instance_number(objEnemyParent); enms++) {
		if instance_find(objEnemyParent, enms).object_index != object_index is_only_enemy_type = false
	}

	return is_only_enemy_type;


}
