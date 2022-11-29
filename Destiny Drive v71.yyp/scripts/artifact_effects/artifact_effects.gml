function artifact_effects() {
	if global.artifact[3, 0] = 1
	{
	    with(objEnemyBulletParent)
	    {
	        if damage != 0
	        {
	        damage = 5
	        }
	    }
    
	    with(objBulletParent)
	    {
	        if damage != 0
	        {
	        damage = 5
	        }
	    }
	}



}
