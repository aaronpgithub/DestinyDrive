function fire_color() {
	if instance_exists(objGameControl)
	{
	    if global.wave >= objGameControl.storm and global.level = "forest" and global.wave != global.wave_max and global.wave > 1 and objGameControl.storm > 0
	    {
	        R = lerp(R, 227, 0.2)
        
	        G = lerp(G, 128, 0.2)
        
	        B = lerp(B, 36, 0.2)
	    }
	}



}
