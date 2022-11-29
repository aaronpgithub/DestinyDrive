function damage_enemy() {
	var boss_damage_mult = damage_multiplier;

	if instance_exists(objEnemyParent)
	{
	    if ds_map_exists(global.item_map, "hit_list")
	    {
	        if x = instance_find(objEnemyParent, ds_map_find_value(global.item_map, "hit_list")).x and y = instance_find(objEnemyParent, ds_map_find_value(global.item_map, "hit_list")).y
	        {
	        boss_damage_mult += 0.5
	        }
	    }
	}

	///this is the script for a bullet hitting an enemy

	if x < 320 and alarm[11] = -1 and image_alpha > 0
	{
	    if (other.pierce_constant = true or other.pierce_enemy != id) and other.damage > 0 //pierce is both for piercing and just for testing if it can hurt an enemy.
	    {
	    bullet_hit() //Bullet hit is for things like King Midas' Finger
	
			if invincible = false {
		    hp -= other.damage * boss_damage_mult
		    flash = true //if this equals true, the enemy flashes white.
			freeze = other.freeze
				if poisoned < -1 and other.poison {
					poisoned = 10
				}
			}
		
		#region bullet counting
	        if other.bullet_count = true //Bullet counting is for bullets shot by the player. For instance, an explosion hurts enemies but doesn't count as a bullet hit.
	        {
	            if other.object_index != objLaser and other.object_index != objPoisonCloud
	            {
	            global.bullets_hit += 1
	            }
	            else
	            {
	                if other.bullet_add = 1 //Bullet add variable adds only one to the bullet hit variable, for stuff like laser that hits multiple times.
	                {
	                global.bullets_hit += 1
	                other.bullet_add -= 1
	                }
	            }
	        }
		#endregion
    
	        if hp <= 0 and other.golden = true 
	        {
	        global.money += 10
	        }
	    }

	#region reflect
		if champ = c_black
		{
		    with(other)
		    {
		        if pierce_constant = false and damage > 0
		        {
		        globalvar spoded, aglen;
        
		        spoded = -(abs(spd))
		        aglen = random_range(-15, 15)
        
		        if spoded > -1
		        {
		        spoded = -1
		        }
        
		        if spoded < -4
		        {
		        spoded = -4
		        }
        
		        var ibnest = instance_create(x, y, objEnemyBullet)
        
		            with(ibnest)
		            {
		            spd = spoded
		            angle = aglen
		            damage = 1
            
		            image_angle = angle
		            }
		        }
		    }
		}
	#endregion
    
		globalvar myidforpierce;
		myidforpierce = id
	
	    //THE BULLET
	    with(other)
	    {
	        bullet_hit_enemy = true
        
	        if dont_dest = false and pierce = false //If piercing isn't true for this bullet and the 'dont_dest' does not override the destroying, destroy the bullet.
	        {
	        instance_destroy()
	        }
	        else {//if dont_dest = true or does_pierce = true
	            if pierce_constant = false and pierce = true { //pierce is the damage variable again. If it equls true but the 'pierce_constant' overrides it (laser), 
	            pierce_enemy = myidforpierce
	            }
	        }
    
	        if object_index = objBoomerang go_back = true
	    }
	    ///////////
	}

	    if hp <= 0 and other.life_steal = true global.hp += 2



}
