function bullet_hit() {
	//The testing for a bullet hit
	if ds_map_exists(global.item_map, "midas")
	{
	var chance = random(1);

	    if chance <= 0.45 * global.real_luck
	    {
	    global.money += ds_map_find_value(global.item_map, "midas")
    
	        if ds_map_exists(global.item_map, "golden_rose")
	        {
	        global.money += 4
	        }
	    }
	}

	if other.poison_smoke = true
	{
	instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objCigarSmoke)
	other.poison_smoke = false
	other.pos_x = pos_x
	other.pos_y = pos_y
	}

	if other.infinite = true objPlayer.infinite_counter--


}
