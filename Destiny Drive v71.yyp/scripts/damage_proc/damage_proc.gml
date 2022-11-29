 //////audio_play_sound(sndHurt1, 0, false)
function damage_proc() {

	powerhouse_charge = 1

	if instance_exists(objAmethystGhost) objAmethystGhost.damage_amethyst--

	if sprite_index = sprPlayerNoodle
	{
	alarm[5] = room_speed
	}

	if ds_map_exists(global.item_map, "clover_shield") {
		if ds_map_find_value(global.item_map, "clover_shield") <= 0 global.alt_luc += 5
	
		ds_map_replace(global.item_map, "clover_shield", room_speed * 3)
	}

	if ds_map_exists(global.item_map, "essence_pity")
	{
	    if ds_map_find_value(global.item_map, "essence_pity") < 5
	    {
	    if ds_map_find_value(global.item_map, "essence_pity") >= 0 ds_map_replace(global.item_map, "essence_pity", ds_map_find_value(global.item_map, "essence_pity") + 1)
	    }
	    else
	    {
	    ds_map_replace(global.item_map, "essence_pity", -5)
	    }
	}

	if ds_map_exists(global.item_map, "angelic_savior") {
		if (global.hp <= 5 and global.hp > 1) and global.shields[0] <= 0 {
			var angelic_chance = random(1)
		
			if angelic_chance <= 0.2 * player_luck {
				powershield_activate()
			}
		}
	}

	if ds_map_exists(global.item_map, "icy_cold")
	{
	    repeat(irandom_range(2, 4))
	    {
	    var icyint = instance_create(x, y, objBullet)
	    globalvar chncei;
	    chncei = random(1)
    
	        with(icyint)
	        {
	            freeze = false
	            if chncei > 0.1 * global.luck freeze = true
	            sprite_index = sprIcyColdIcicle
            
	            angle = random_range(-20, 20) * global.accuracy
	            damage = 10 * global.dmg
	            spd = 4 * global.shot_speed
            
	            color = c_white
	            no_flash = true
	        }
	    }
	}

	soul_count = 0

	if ds_map_exists(global.item_map, "rocket")
	{
	var chance, your_chance;
	chance = 0.40
	your_chance = random(1)

	    if your_chance <= chance * global.luck
	    {
	        repeat(global.bullet_amt)
	        {
	        instance_create(x, y, objRocket)
	        }
	    }
	}

	if ds_map_exists(global.item_map, "g_angel")
	{
	var chance, your_chance;
	chance = 0.20
	your_chance = random(1)

	    if your_chance <= chance * global.luck
	    {
	        repeat(global.bullet_amt)
	        {
	            var inst;
            
	            inst = instance_create(x, y, objGuardianAngel)
            
	            with(inst)
	            {
	            angle = random_range(-5, 5) * global.accuracy
	            }
	        }
	    }
	}

	if ds_map_exists(global.item_map, "thorns")
	{
	    with(objEnemyParent)
	    {
	        if object_index != objQueenOfFlies and object_index != objUFO and object_index != objSatan
	        {
	        hp -= 25 * global.dmg
	        flash = true
	        }
	    }
	}


	//sorry but this is a health_map thing
	if global.hp <= ceil(max_hp / 2) and death_avoid = false
	{
	    if ds_map_exists(global.item_map, "gunpowder")
	    {
	        if ds_map_find_value(global.item_map, "gunpowder") > 0
	        {
	        var expl;

	        expl = instance_create(x, y, objGunpowderBlood)
        
	            ds_map_replace(global.item_map, "gunpowder", 0)
	        }
	    }
	}

	if ds_map_exists(global.item_map, "relic_bone")
	{
	var chance, your_chance;
	chance = 0.05
	your_chance = random(1)

	    if your_chance <= chance * global.luck
	    {
	    instance_create(x, y, objBoneBoyCircle)
	    }
	}

	if ds_map_exists(global.item_map, "heart_fire")
	{
	    var bullets_chosen_max = 7
    
	    for(var bell = instance_number(objEnemyBulletParent) - 1; bell >= 0; bell--)
	    {
	        var chance = random(1)
        
	        if chance <= 0.13 * global.luck and bullets_chosen_max > 0
	        {
	            with(instance_find(objEnemyBulletParent, bell))
	            {
	                if dont_dest = false
	                {
	                globalvar fireange, firespde;
	                var anothinst = instance_create(x, y, objBullet)
                
	                fireange = angle
	                firespde = spd
                
	                    with(anothinst)
	                    {
	                    damage = 10 * global.dmg
	                    spd = -firespde
                    
	                    angle = fireange
	                    no_flash = true
	                    image_angle = angle
	                    }
                    
	                instance_destroy()
	                }
	            }
            
	            bullets_chosen_max -= 1
	        }
	    }
	}

	if ds_map_exists(global.item_map, "heart_ice") and ds_map_find_value(global.item_map, "heart_ice") = 1
	{
	    global.enemy_spd -= 0.2
	    ds_map_replace(global.item_map, "heart_ice", 0)
	}

	if instance_exists(objBestFriend)
	{
	    with(objBestFriend)
	    {
	    alarm[0] = 10
	    burst += 8
	    }
	}

	if instance_exists(objBalloon)
	{
	    with(objBalloon)
	    {
	    image_index += 1
	    }
	}

	if ds_map_exists(global.item_map, "unicorn_horn")
	{
	    for(var uni_blast = 7; uni_blast >= 0; uni_blast--)
	    {
	        var uni_bul = instance_create(x, y, objBullet)
        
	        with(uni_bul)
	        {
	        damage = 10 * global.dmg
	        spd = 4 * global.shot_speed
	        angle =  (360 / 8) * uni_blast
	        no_flash = true
	        }
	    }
	}

	if ds_map_exists(global.item_map, "beehive")
	{
	    var bee_chance = random(1)
    
	    if bee_chance <= 0.4 * global.luck
	    {
	        var beeman = instance_create(x, y, objBee)
        
	        with(beeman)
	        {
	        damage = 40 * global.dmg
	        no_flash = true
	        }
	    }
	}

	if ds_map_exists(global.item_map, "snake_charm")
	{
	    var bee_chancet = random(1)
    
	    if bee_chancet <= 0.2 * global.luck
	    {
	        var beeman2 = instance_create(0, y, objSnakeBullet)
        
	        with(beeman2)
	        {
	        damage = 10 * global.dmg
	        angle = random_range(-20, 20) * global.accuracy
	        spd = 4 * global.shot_speed
	        no_flash = true
	        sprite_index = sprSnakeHead
	        }
	    }
	}



}
