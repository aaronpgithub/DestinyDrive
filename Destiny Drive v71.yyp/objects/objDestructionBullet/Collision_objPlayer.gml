/// @description Insert description here
// You can write your code in this editor
var my_destruction_id = id;

with(objPlayer)
	{
	var damage_multiplier = 1;

	if weapon = "mblood" damage_multiplier += 1
	if ds_map_exists(global.item_map, "blood_gemstone") damage_multiplier += 1
	if ds_map_exists(global.item_map, "hellstone") damage_multiplier += 1
	
	test_damage_taken(my_destruction_id, 1, damage_multiplier)
	}
	
instance_destroy()