function kill_enemy() {
	    if global.hp > 0
	    {
	    objPlayer.soul_count += floor(max_hp / 10)
	    }
	
		if instance_number(objEnemyParent) = 1 and global.hp > 0 and objPlayer.death_avoid = true
	    {
	        with(objPlayer)
	        {
	        global.hp = max_hp
	        death_avoid = false
	        ability_able = false
	        shoot = true
	        alarm[6] = -1
	        }
	    }
	
	if ds_map_exists(global.item_map, "bp_nano") 
	{
	    if random(1) < 0.12 * global.luck instance_create(-20, -20, objBabyTurret)
	}

	if ds_map_exists(global.item_map, "bloodlust") 
	{
	    if random(1) < 0.1 {
			with(objPlayer) powershield_activate()
		}
	}

	if ds_map_exists(global.item_map, "war_cry")
	{
	    with(objPlayer)
	    {
	    alarm[0] = 1
	    }
	}
    
	if ds_map_exists(global.item_map, "giga_volt")
	{
	    with(objPlayer)
	    {
	    if alarm[2] > 0 alarm[2] += ds_map_find_value(global.item_map, "giga_volt")
	    if alarm[9] > 0 alarm[9] += ds_map_find_value(global.item_map, "giga_volt")
	    if alarm[2] > 0 or alarm[9] > 0 ds_map_replace(global.item_map, "giga_volt", ds_map_find_value(global.item_map, "giga_volt") / 1.35)
	    }
	}

	if ds_map_exists(global.item_map, "screamer") and !instance_exists(objScreamer)
	{
	var your_chance;
	your_chance = random(1)

	    if your_chance < 0.25 * global.luck
	    {
	    instance_create(x, y, objScreamer)
	    }
	}

	if ds_map_exists(global.item_map, "ruby_ring")
	{
	ds_map_replace(global.item_map, "ruby_ring", ds_map_find_value(global.item_map, "ruby_ring") + 0.1)
	global.dmg += 0.1
	}

	if ds_map_exists(global.item_map, "healing_gland")
	{
	if ds_map_exists(global.item_map, "nightinggale_lightning") global.hp += 1
	global.hp += 1
	}

	if ds_map_exists(global.item_map, "bld_fang")
	{
	var your_chance;
	your_chance = random(1)

	    if your_chance < 0.02 * global.luck
	    {
	        if global.hp > 0
	        {
	        var gogo = instance_create(x, y, objPickup)
	            with(gogo) {
					image_index = 0
					unchangable = true
				}
	        }
	    }
	}

	if ds_map_exists(global.item_map, "green_root")
	{
	var your_r_chance;
	your_r_chance = random(1)

	    if your_r_chance < 0.02 * global.luck
	    {
	        if global.hp > 0
	        {
	        global.hp += 1
	        }
	    }
	}

	if ds_map_exists(global.item_map, "brace_prot")
	{
	var your_s_chance;
	your_s_chance = random(1)

	    if your_s_chance < 0.05 * global.luck
	    {
	        var gogo2 = instance_create(x, y, objPickup)
	            with(gogo2) {
					image_index = 1
					unchangable = true
				}
	    }
	}

	if ds_map_exists(global.item_map, "bul_chain")
	{
	    repeat(global.bullet_amt)
	    {
	    var boomdabullet = instance_create(x, y, objBullet)
    
	        with(boomdabullet)
	        {
	        spd = 4 * global.shot_speed
	        damage = 9 * global.dmg
	        angle = random(360)
	        no_flash = true
	        image_angle = angle
	        }
	    }
	}


	if ds_map_exists(global.item_map, "bld_battery")
	{
	var your_chance;
	your_chance = random(1)

	    if your_chance < 0.03 * global.luck
	    {
	        if global.use_itm[0] > -1
	        {
	            if global.use_itm[1] < global.use_itm[2]
	            {
	            global.use_itm[1] += 1
	            }
	        }
	    }
	}


	if ds_map_exists(global.item_map, "apple")
	{
	var your_chance;
	your_chance = random(1)

	    if your_chance < 0.5 * global.luck
	    {
	    instance_create(random_range(140, 300), 0, objApple)
	    }
	}



}
