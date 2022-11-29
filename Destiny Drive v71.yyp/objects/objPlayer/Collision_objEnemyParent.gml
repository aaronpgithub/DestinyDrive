if alarm[8] <= 0 and other.object_index != objSatan and other.image_alpha > 0 and other.object_index != objUFO and other.object_index != objBoarHerder
{
	var damage_multiplier = 1;

	if weapon = "mblood" damage_multiplier += 1
	if ds_map_exists(global.item_map, "blood_gemstone") damage_multiplier += 1
	if ds_map_exists(global.item_map, "hellstone") damage_multiplier += 1
	
	test_damage_taken(other, 1, damage_multiplier)

alarm[8] = room_speed * 0.80

    if global.character = 8
    {
        if death_avoid = true
        {
        death_avoid = false
        global.hp = 0
        ability_able = false
        }
    }
}

