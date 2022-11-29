var med_inst;

xx = x
yy = y

switch(global.level)
{
    case "wasteland":
		if global.wave > objGameControl.mini_wave - 4 and global.wave < objGameControl.mini_wave + 1 {
		med_inst = instance_create(x + 200, yy, choose(objTriple, objBird, objBanditGatling))
		} else {
			med_inst = instance_create(x + 200, yy, choose(objTriple, objBird))
		}
    break;
    
    case "swamp":
    med_inst = instance_create(x + 200, yy, choose(objSwampyTriple, objSmoker, objSwampRat))
    break;
    
    case "forest":
		if instance_exists(objGameControl) {
			med_inst = instance_create(x + 200, yy, objGameControl.forest_enemy)
		}
    break;
    
    case "volcano":
    med_inst = instance_create(x + 200, yy, choose(objSmoker, objShielder, objWaste, objShifter, objMonk, objHomeBoy))
    break;
    
    case "snow":
    med_inst = instance_create(x + 200, yy, choose(objBlueShifter, objRifleman, objIceCube, objStrainer))
    break;
	
	case "city":
    med_inst = instance_create(x + 200, yy, choose(objPOTurret))
    break;
	
	case "ocean":
    med_inst = instance_create(x + 200, yy, choose(objEel, objPiranha, objDolphin))
    break;
	
	case "temple":
	if global.temple_level = "psychic" med_inst = instance_create(x + 200, yy, choose(objWhiteEggi, objOrangeEggi))
	if global.temple_level = "sacrifice" med_inst = instance_create(x + 200, yy, choose(objCultist, objFireSpirit))
    if global.temple_level = "ruin" med_inst = instance_create(x + 200, yy, choose(objCougher, objWavy))
    break;
    
    case "edge":
    med_inst = instance_create(x + 200, yy, choose(objBlueShifter, objRifleman, objIceCube, objStrainer))
    break;
    
    case "hell":
    med_inst = instance_create(x + 200, yy, choose(objHellShifter, objMonk))
    break;
    
    case "killroom":
    med_inst = instance_create(x + 200, yy, choose(objAnnoyance, objShifter, objMonk, objHomeBoy))
    break;
}

//for debug stuff
//med_inst = instance_create(x + 200, global.yy, choose(objHomeBoy))

with(med_inst)
{
pos_x = x - 200
pos_y = ystart
}

