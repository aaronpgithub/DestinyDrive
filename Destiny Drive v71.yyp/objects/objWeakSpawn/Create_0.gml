var weak_inst;

xx = x
yy = y

if !instance_exists(objQueenOfFlies)
{
    switch(global.level)
    {
        case "wasteland":
			if global.wave > objGameControl.mini_wave - 4 and global.wave < objGameControl.mini_wave + 1 {
				weak_inst = instance_create(x + 200, yy, choose(objDoubleShot, objTurretCar, objJunker, objBanditCar))
			} else {
				weak_inst = instance_create(x + 200, yy, choose(objDoubleShot, objTurretCar, objJunker, objMediCar))
			}
        break;
        case "swamp":
			var enemy_chosen = choose(objSwampyTurretCar, objSwampyBoneBoy, objBanditTruck, objSwampFrog)
			
			if global.wave > objGameControl.mini_wave choose(objSwampyBoneBoy, objBanditTruck, objSwampFrog, objSwampyTurretCar, objLilLarva)
			
			weak_inst = instance_create(x + 200, yy, enemy_chosen)
		break;
        case "forest":
        weak_inst = instance_create(x + 200, yy, choose(objConstantBoy, objPsychicBoneBoy, objZigZag, objForestFatEnemy))
        break;
        case "volcano":
        weak_inst = instance_create(x + 200, yy, choose(objDoubleShot, objSuperTurretCar, objSuperMedi, objBuzzyBastardFire, objLockedEnemy))
        break;
        case "snow":
        weak_inst = instance_create(x + 200, yy, choose(objIceTurretCar, objIceBoneBoy, objIceLockedEnemy))
        break;
		case "city":
        weak_inst = instance_create(x + 200, yy, choose(objPOSkull, objPOBouncer))
        break;
		case "ocean":
        weak_inst = instance_create(x + 200, yy, choose(objMermaid, objBubbleBoneBoy, objBubbleMaker))
        break;
		case "temple":
        if global.temple_level = "psychic" weak_inst = instance_create(x + 200, yy, choose(objSpeep, objFatEggi, objBabyShielder))
        if global.temple_level = "sacrifice" weak_inst = instance_create(x + 200, yy, choose(objSpicer, objSacrificeBoneBoy, objMeanie))
        if global.temple_level = "ruin" weak_inst = instance_create(x + 200, yy, choose(objShaker, objCrybaby, objSmoky))
		break;
        case "edge":
        weak_inst = instance_create(x + 200, yy, choose(objGrappler, objStinger))
        break;
        case "hell":
            if !instance_exists(objSatan)
            {
            weak_inst = instance_create(x + 200, yy, objBuzzyBastardFire)//choose(objDevil, objBuzzyBastardFire))
            }
            else
            {
            weak_inst = instance_create(x + 200, yy, choose(objBuzzyBastardFire, objBuzzyBastardFire, objDevil))
            }
        break;
        case "killroom":
        weak_inst = instance_create(x + 200, yy, choose(objWheeler, objSuperTurretCar, objUnstableJunker, objSuperMedi, objThreateningBuzzy, objLockedEnemy))
        break;
    }
}
else
{
weak_inst = instance_create(x + 200, yy, choose(objBanditTruck, objBuzzBuzz))
}

with(weak_inst)
{
pos_x = x - 200
pos_y = ystart
}

