/// @description Insert description here
// You can write your code in this editor

var boss_spawner;

globalvar b_sp_x, b_sp_y;
b_sp_x = x
b_sp_y = y

if boss_to_spawn = 0 {
	switch(global.level)
	{
	case "wasteland":
	boss_spawner = instance_create(x + 200, b_sp_y, choose(objBanditCaravan, objKingBubbs))//, objUFO))
	break;

	case "swamp":
	    var worm = choose(true, false, false)

	    if worm = false
	    {
	    boss_spawner = instance_create(x + 200, b_sp_y, choose(objSpookyScott, objThePlague))
	    }
	    else
	    {
	    boss_spawner = instance_create(-300, b_sp_y, objParasiteWorm)
	    }
    
	break;

	case "forest":
	boss_spawner = instance_create(x + 200, b_sp_y, objCarriageOfIllusion)//choose(objCarriageOfIllusion, objNaturesBane, objPixieStorm))
	break;

	case "volcano":
	boss_spawner = instance_create(x + 200, b_sp_y, choose(objQueenOfFlies, objTankOfFlame, objGorgan))
	break;

	case "snow":
	boss_spawner = instance_create(x + 200, b_sp_y, choose(objAnarchistOfTime))
	break;

	case "city":
	boss_spawner = instance_create(x + 200, b_sp_y, objMilitaryWeaponry)
	break;

	case "ocean":
	boss_spawner = instance_create(x + 200, b_sp_y, objKingBorbs)
	break;

	case "temple":
	boss_spawner = instance_create(x + 200, b_sp_y, objTombOfShri)
	break;

	case "edge":
	boss_spawner = instance_create(x + 200, b_sp_y, choose(objTheGlitch))
	break;

	case "final":
	boss_spawner = instance_create(x + 240, b_sp_y, choose(objTheFinalBoss))
	break;

	case "hell":
	boss_spawner = instance_create(room_width / 2, 110, choose(objSatan))
	break;

	case "killroom":
	boss_spawner = instance_create(x + 200, b_sp_y, choose(objQueenOfFlies, objTankOfFlame))
	break;
	}
} else {
	boss_spawner = instance_create(x + 200, b_sp_y, boss_to_spawn)
}
	with(boss_spawner)
	{
	    switch(object_index)
	    {
	    case objQueenOfFlies:
	    y = 0
	    pos_x = b_sp_x
	    pos_y = 0
	    break;
    
	    case objTombOfShri:
	    pos_x = 318
	    break;
    
	    default:
	    pos_x = b_sp_x
	    pos_y = b_sp_y
	    break;
	    }
	}

instance_destroy()