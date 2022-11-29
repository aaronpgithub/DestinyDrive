function pickup_motion(argument0) {
	switch(movement_type)
	{//need "laggy" type
	    case "normal":
	        x -= 3 * argument0
	    break;
	    case "sine":
	        y = ystart + (sin(degtorad(t)) * 25)
	        x -= 3 * argument0
	    break;
	    case "tangent":
	        y = ystart + (tan(degtorad(t)) * 10)
	        x -= 3 * argument0
	    break;
	    case "arcsine":
	        //y = ystart + (sqrt(t) * 10)
	        x -= 3 * argument0
	    break;
	}

	t += 4 * argument0



}
