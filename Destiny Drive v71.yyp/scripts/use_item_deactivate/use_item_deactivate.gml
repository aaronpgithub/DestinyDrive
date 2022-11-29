function use_item_deactivate(argument0) {
	var nighting_mult = 1;

	if ds_map_exists(global.item_map, "nightinggale_lightning") nighting_mult = 2;

	switch(argument0)
	{
	case 0: //War Horn
	global.alt_dmg -= 0.6 * nighting_mult
	ds_map_delete(global.item_map, "war")
	blind_faith_script()
	break;

	case 1: //Magic Clock
	    global.enemy_spd += 0.3 * nighting_mult
	    with(objEnemyBulletParent)
	    {
	    motion_set(angle, spd * global.enemy_spd)
	    }
	blind_faith_script()
	break;

	case 3: //King Midas' Finger
	ds_map_delete(global.item_map, "midas")
	blind_faith_script()
	break;

	case 9: //Spiral Gun
	spiral_shoot = false
	blind_faith_script()
	break;

	case 12: //Brother Shadow
	global.bullet_amt -= 1 * nighting_mult
	blind_faith_script()
	break;

	case 13: //Energy Drink
	global.fire_rate = ds_map_find_value(global.item_map, "energy_drink")
	blind_faith_script()
	break;

	case 16: //Helping Hand
	    with(objHelpingHand)
	    {
	    instance_destroy()
	    }
		blind_faith_script()
	break;

	case 18: //Bullet Portal
	if nighting_mult = 2 global.bullet_amt -= 1
	blind_faith_script()
	break;

	case 20: //Healing Gland
	ds_map_delete(global.item_map, "healing_gland")
	blind_faith_script()
	break;

	case 26: //Pot O' Gold
	global.luck -= 5 * nighting_mult
	blind_faith_script()
	break;

	case 40: //Faulty Powershield
	ds_map_delete(global.item_map, "faulty_powershield")
	blind_faith_script()
	break;

	case 50: //Hungry Bullets
	ds_map_delete(global.item_map, "hungry_bullets")
	blind_faith_script()
	break;
	}


}
