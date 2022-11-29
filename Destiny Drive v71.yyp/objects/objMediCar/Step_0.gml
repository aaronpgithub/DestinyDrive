event_inherited()

if spiral_eggi = false {
	if damaged_x != 0
	{
	    if sprite_index != sprAaronEggi
	    {
	    sprite_index = sprMediCarHeal
	    }
	}
	else
	{
	    if sprite_index != sprAaronEggi
	    {
	    sprite_index = sprMediCar
	    image_speed = random_range(0.05, 0.3)
	    }
	}

	if instance_exists(instance_find(objEnemyParent, heal))
	{
	    if instance_find(objEnemyParent, heal).hp >= instance_find(objEnemyParent, heal).max_hp
	    {
	    heal += 1
	    damaged_x = 0
	    damaged_y = 0
	    }
	    else
	    {
	        if instance_find(objEnemyParent, heal).object_index != objMediCar
	        {
	        damaged_x = instance_find(objEnemyParent, heal).x
	        damaged_y = instance_find(objEnemyParent, heal).y - 15
	        }
	        else
	        {
	        heal += 1
	        damaged_x = 0
	        damaged_y = 0
	        }
	    }
	}
	else
	{
	heal = 0
	damaged_x = 0
	damaged_y = 0
	}

	for(var enemies_around = 0; enemies_around < instance_number(objEnemyParent); enemies_around++) {
		if instance_find(objEnemyParent, enemies_around).object_index != objMediCar break;
	
		if enemies_around = instance_number(objEnemyParent) - 1 {
			spiral_eggi = true
			hp_set(80)
			alarm[0] = room_speed
			if sprite_index != sprAaronEggi sprite_index = sprMediCarHeal
		}
	}
}
