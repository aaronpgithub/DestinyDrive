function homing() {
	/* What this function DOESN'T do right:

		home in on enemies if using reverse warp pad
		home in on the middle of an enemy

	*/

	if instance_exists(objEnemyParent) and object_index != objLaser
	{
		var shortest_distance = -10, monster_home = instance_find(objEnemyParent, 0);

		for(var home = 0; home < instance_number(objEnemyParent); home++) {
			var monster = instance_find(objEnemyParent, home)
	
			if shortest_distance = -10 {
				shortest_distance = point_distance(x, y, monster.mid_x, monster.mid_y)
				monster_home = instance_find(objEnemyParent, home)
			}
	
			if point_distance(x, y, monster.mid_x, monster.mid_y) < shortest_distance {
				shortest_distance = point_distance(x, y, monster.mid_x, monster.mid_y)
				monster_home = instance_find(objEnemyParent, home)
			}
		}

	    if point_distance(x, y, monster_home.mid_x, monster_home.mid_y) <= 65
	    {
	        if spd > 0
	        {
	            if y < monster_home.mid_y
	            {
	            angle -= 1
	            }
	            else
	            {
	            angle += 1
	            }
	        }
	        else
	        {
	            if y < monster_home.mid_y
	            {
	            angle += 1
	            }
	            else
	            {
	            angle -= 1
	            }
	        }

	    motion_set(angle, spd)
	    }
	}



}
