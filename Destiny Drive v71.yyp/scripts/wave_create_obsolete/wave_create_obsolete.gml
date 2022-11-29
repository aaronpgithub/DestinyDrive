function wave_create_obsolete() {
	if global.wave = objGameControl.vip_shop exit;

	var wave_config, n, e, s, w, mh, mv;

	//mh and mv are middle horizontal and middle vertical
	//all the cardinal directions
	n = 112
	e = 288
	s = 224
	w = 184
	mh = 236
	mv = 168
	//

	switch(global.level)
	{
	case "wasteland":
	wave_config = round(random_range(0, 14))
	break;

	case "swamp":
	wave_config = round(random_range(0, 14))
	break;

	case "forest":
	wave_config = round(random_range(0, 20))
	break;

	case "volcano":
	wave_config = round(random_range(10, 22))
	break;

	case "snow":
	wave_config = round(random_range(18, 26))
	break;

	case "city":
	wave_config = 18//round(random_range(18, 22))
	break;

	case "ocean":
	wave_config = round(random_range(18, 22))
	break;

	case "temple":
	wave_config = round(random_range(18, 22))
	break;

	case "edge":
	wave_config = round(random_range(7, 9))
	break;

	case "hell":
	wave_config = round(random_range(18, 26))

	    if instance_exists(objSatan)
	    {
	    wave_config = 23
	    }

	break;

	case "killroom":
	wave_config = round(random_range(18, 22))
	break;
	}

	//wave_config = -1

	switch(wave_config)
	{
	case -1: //debug
	instance_create(w, n, objLargeSpawn)
	break;
	
	case 0:
	instance_create(mh, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	break;

	case 1:
	instance_create(mh, n, objWeakSpawn)
	instance_create(w, mv, objWeakSpawn)
	instance_create(mh, s, objWeakSpawn)
	instance_create(e, mv, objWeakSpawn)
	break;

	case 2:
	instance_create(mh, n, objWeakSpawn)
	instance_create(e, n, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(e, s, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(mh, s, objWeakSpawn)
	break;

	case 3:
	instance_create(e, n, objWeakSpawn)
	instance_create(w, s, objWeakSpawn)
	break;

	case 4:
	instance_create(e, n, objWeakSpawn)
	instance_create(e, mv, objWeakSpawn)
	instance_create(w, n, objWeakSpawn)
	instance_create(w, mv, objWeakSpawn)
	instance_create(w, s, objWeakSpawn)
	break;

	case 5:
	instance_create(mh, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(e, n, objWeakSpawn)
	instance_create(e, mv, objWeakSpawn)
	instance_create(e, s, objWeakSpawn)
	instance_create(mh, s, choose(objWeakSpawn, objMediumSpawn))
	break;

	case 6:
	instance_create(mh, n, objWeakSpawn)
	instance_create(e, n, objWeakSpawn)
	instance_create(w, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(e, s, objWeakSpawn)
	instance_create(mh, s, objWeakSpawn)
	break;

	case 7:
	instance_create(mh, n, objWeakSpawn)
	instance_create(w, mv, objWeakSpawn)
	instance_create(mh, s, objWeakSpawn)
	instance_create(e, mv, objWeakSpawn)
	instance_create(mh, mv, objWeakSpawn)
	break;

	case 8:
	instance_create(mh, n, objWeakSpawn)
	instance_create(w, mv, objWeakSpawn)
	instance_create(e, mv, objWeakSpawn)
	instance_create(mh, mv, objWeakSpawn)
	break;

	case 9:
	instance_create(mh, n, objWeakSpawn)
	instance_create(w, mv, objWeakSpawn)
	instance_create(mh, s, objWeakSpawn)
	break;

	case 10:
	instance_create(w, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(mh, n, objWeakSpawn)
	instance_create(mh, mv, objWeakSpawn)
	instance_create(mh, s, objWeakSpawn)
	instance_create(e, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	break;

	case 11:
	instance_create(mh, n, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(e, n, objWeakSpawn)
	instance_create(e, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(e, s, objWeakSpawn)
	instance_create(mh, s, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	break;

	case 12:
	instance_create(e, n, choose(objMediumSpawn))
	instance_create(e, mv, choose(objMediumSpawn))
	instance_create(e, s, choose(objMediumSpawn))
	break;

	case 13:
	instance_create(e, n, choose(objWeakSpawn, objLargeSpawn, objMediumSpawn))
	instance_create(e, mv, choose(objWeakSpawn, objLargeSpawn, objMediumSpawn))
	instance_create(e, s, choose(objWeakSpawn, objLargeSpawn, objMediumSpawn))
	break;

	case 14:
	instance_create(w, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(mh, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	instance_create(e, mv, choose(objWeakSpawn, objWeakSpawn, objMediumSpawn))
	break;

	case 15:
	instance_create(w, n, choose(objWeakSpawn))
	instance_create(mh, mv, choose(objMediumSpawn, objLargeSpawn))
	instance_create(e, s, choose(objWeakSpawn))
	break;

	case 16:
	instance_create(mh, mv, choose(objMediumSpawn, objLargeSpawn))
	break;

	case 17:
	instance_create(e, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(mh, mv, choose(objMediumSpawn, objLargeSpawn))
	instance_create(w, s, choose(objWeakSpawn, objMediumSpawn))
	break;

	case 18:
	instance_create(e, n, objWeakSpawn)
	instance_create(e, mv, objWeakSpawn)
	instance_create(e, s, objWeakSpawn)
	instance_create(mh, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(mh, mv, choose(objWeakSpawn, objMediumSpawn, objLargeSpawn))
	instance_create(mh, s, choose(objWeakSpawn, objMediumSpawn))
	break;

	case 19:
	instance_create(e, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(w, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(e, s, choose(objWeakSpawn, objMediumSpawn))
	instance_create(w, s, choose(objWeakSpawn, objMediumSpawn))
	break;

	case 20:
	instance_create(w, n, choose(objWeakSpawn))
	instance_create(mh, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(w, mv, choose(objMediumSpawn))
	instance_create(mh, s, choose(objWeakSpawn, objMediumSpawn))
	instance_create(w, s, choose(objWeakSpawn))
	break;

	case 21:
	instance_create(e, n, choose(objMediumSpawn))
	instance_create(e, mv, choose(objMediumSpawn))
	instance_create(e, s, choose(objMediumSpawn))
	instance_create(w, n, choose(objWeakSpawn))
	instance_create(w, mv, choose(objWeakSpawn))
	instance_create(w, s, choose(objWeakSpawn))
	break;

	case 22:
	instance_create(mh, s, choose(objWeakSpawn))
	instance_create(w, mv, choose(objMediumSpawn))
	instance_create(mh, mv, choose(objMediumSpawn))
	instance_create(e, mv, choose(objMediumSpawn))
	instance_create(mh, n, choose(objWeakSpawn))
	instance_create(e, n, choose(objWeakSpawn))
	instance_create(e, s, choose(objWeakSpawn))
	break;

	case 23:
	instance_create(mh, mv, choose(objWeakSpawn))
	instance_create(e, n, choose(objWeakSpawn))
	instance_create(e, mv, choose(objWeakSpawn))
	instance_create(e, s, choose(objWeakSpawn))
	instance_create(w, n, choose(objWeakSpawn))
	instance_create(w, mv, choose(objWeakSpawn))
	instance_create(w, s, choose(objWeakSpawn))
	break;

	case 24:
	instance_create(w, n, choose(objLargeSpawn))
	instance_create(mh, mv, choose(objWeakSpawn, objMediumSpawn))
	instance_create(e, s, choose(objLargeSpawn))
	break;

	case 25:
	instance_create(mh, n, choose(objWeakSpawn, objMediumSpawn))
	instance_create(mh, s, choose(objWeakSpawn))
	instance_create(e, mv, choose(objLargeSpawn))
	instance_create(w, mv, choose(objLargeSpawn))
	break;

	case 26:
	instance_create(mh, s, choose(objMediumSpawn))
	instance_create(e, mv, choose(objWeakSpawn))
	instance_create(w, mv, choose(objWeakSpawn))
	instance_create(e, n, choose(objWeakSpawn))
	break;
	}







}
