if other.lava = true and alarm[8] <= 0 and !place_meeting(x, y, objBridge) and global.hp > 0
{
    if !ds_map_exists(global.item_map, "magma_rock")
    {
		var damage_multiplier = 1;

		if weapon = "mblood" damage_multiplier += 1
		if ds_map_exists(global.item_map, "blood_gemstone") damage_multiplier += 1
	
		test_damage_taken(other, 1, damage_multiplier)
    }
    else
    {
        objGameControl.trns = true
        objGameControl.hellgoto = true
        global.level = "hell"
        
        global.wave = global.wave_max + 1
        
        ds_map_delete(global.item_map, "magma_rock")
    }
    
    alarm[8] = room_speed * 0.15
}



