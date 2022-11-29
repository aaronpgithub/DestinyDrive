var minix, miniy;
var mini_inst, herder;

herder = choose(true, false)

minix = x
miniy = y

if !instance_exists(objQueenOfFlies)
{
    switch(global.level)
    {
    case "wasteland":
	mini_inst = instance_create(x + 200, miniy, choose(objNeighborhoodGang, objWastelandBully, objBoarHerder))
    break;
    
    case "swamp":
	mini_inst = instance_create(x + 200, miniy, choose(objEyeOfTheStorm, objFlyingFish, objTheMutantTank))
    break;
    
    case "forest":
    mini_inst = instance_create(x + 200, miniy, choose(objThirdForestMiniboss, objTheHunter, objHorrorApparition))
    break;
    
    case "volcano":
    mini_inst = instance_create(x + 200, miniy, objFireMage)
    break;
    
    case "snow":
    mini_inst = instance_create(x + 200, miniy, objDeathGang)
    break;
	
	case "city":
    mini_inst = instance_create(x + 200, miniy, objRadicalMan)
    break;
	
	case "ocean":
    mini_inst = instance_create(x + 200, miniy, objRegularFish)
    break;
	
	case "temple":
    mini_inst = instance_create(x + 200, miniy, objPyramid)
    break;
    
    case "edge":
    mini_inst = instance_create(x + 200, miniy, objSpiritStorm)
    break;
    
    case "hell":
    mini_inst = instance_create(x + 200, miniy, choose(objDeadWood))
    break;
    
    case "killroom":
    mini_inst = instance_create(x + 200, miniy, choose(objFireMage, objDeadWood))
    break;
    }
}
else
{
    if objQueenOfFlies.boss_amt = 2
    {
    mini_inst = instance_create(x + 200, miniy, choose(objQueenOfFliesStrongMiniboss))
    }
    else
    {
    mini_inst = instance_create(x + 200, miniy, choose(objQueenOfFliesFastMiniboss))
    }
}
    
    with(mini_inst)
    {
    pos_x = minix
    pos_y = miniy
    }

