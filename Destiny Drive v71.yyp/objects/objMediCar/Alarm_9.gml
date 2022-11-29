if spiral_eggi = false {
	if instance_exists(instance_find(objEnemyParent, heal))
	{
	    if instance_find(objEnemyParent, heal).hp < instance_find(objEnemyParent, heal).max_hp
	    {
	        with(instance_find(objEnemyParent, heal))
	        {
	        hp += 1
	        }
	    }
	}

	alarm[9] = 15
}