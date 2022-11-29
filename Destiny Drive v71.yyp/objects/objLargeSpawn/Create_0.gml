var large_inst;

xx = x
yy = y

switch(global.level)
{
    case "wasteland":
    large_inst = instance_create(x + 200, yy, objTubbsy)
    break;
    case "swamp":
	if global.wave > objGameControl.mini_wave {
		large_inst = instance_create(x + 200, yy, choose(objQueen, objSquid))
	} else large_inst = instance_create(x + 200, yy, objSquid) 
    break;
    case "forest":
    large_inst = instance_create(x + 200, yy, choose(objSuperHomer, objBigZig))
    break;
    case "volcano":
    large_inst = instance_create(x + 200, yy, choose(objQuadShot, objSquid))
    break;
    case "snow":
    large_inst = instance_create(x + 200, yy, choose(objSnowBlower, objIceMage))
    break;
	case "city":
    large_inst = instance_create(x + 200, yy, choose(objPOGat, objNewsie))
    break;
	case "ocean":
    large_inst = instance_create(x + 200, yy, choose(objStarfish))
    break;
	case "temple":
    if global.temple_level = "psychic" large_inst = instance_create(x + 200, yy, choose(objNightmareEggi))
	if global.temple_level = "sacrifice" large_inst = instance_create(x + 200, yy, choose(objWitch, objSnotty))
    if global.temple_level = "ruin" large_inst = instance_create(x + 200, yy, choose(objBrainiac))
    break;
    case "edge":
    large_inst = instance_create(x + 200, yy, choose(objSnowBlower, objIceMage))
    break;
    case "hell":
    large_inst = instance_create(x + 200, yy, choose(objQuadShot, objTorturedSoul, objHellSmoker))
    break;
    case "killroom":
    large_inst = instance_create(x + 200, yy, choose(objQuadShot, objSquid))
    break;
}

with(large_inst)
{
pos_x = x - 200
pos_y = ystart
}

