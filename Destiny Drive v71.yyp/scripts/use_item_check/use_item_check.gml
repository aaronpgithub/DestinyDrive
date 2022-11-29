function use_item_check(argument0, argument1, argument2) {
	//setting the charge of the item
	//keep in mind it sets the MAX charge first
	//Usually, argument0 = global.use_itm[0], argument1 = global.use_itm[1], argument2 = global.use_itm[2].

	var shrink_charge = true, set_max = true;

	switch(global.use_itm[argument0])
	{
	case 0: //War Horn
	global.use_itm[argument2] = 5
	break;
	case 1: //Magic Clock
	global.use_itm[argument2] = 6
	break;
	case 2: //Fireworks
	global.use_itm[argument2] = 10
	break;
	case 3: //King Midas' Finger
	global.use_itm[argument2] = 9
	break;
	case 4: //EMP
	global.use_itm[argument2] = 3
	break;
	case 5: //Super Bomb
	global.use_itm[argument2] = 5
	break;
	case 6: //Blood Contract
	global.use_itm[argument2] = 7
	break;
	case 7: //Roll of Bandages
	global.use_itm[argument2] = 5
	break;
	case 8: //Shield Generator
	global.use_itm[argument2] = 10
	break;
	case 9: //Spiral Gun
	global.use_itm[argument2] = 12
	break;
	case 10: //Impatience
	global.use_itm[argument2] = 8
	break;
	case 11: //Distress Call
	global.use_itm[argument2] = 7
	break;
	case 12: //Brother Shadow
	global.use_itm[argument2] = 7
	break;
	case 13: //Relic of Noodle
	global.use_itm[argument2] = 8
	break;
	case 14: //Flashbang
	global.use_itm[argument2] = 3
	break;
	case 15: //Vitamins
	global.use_itm[argument2] = 8
	break;
	case 16: //Helping Hand
	global.use_itm[argument2] = 8
	break;
	case 17: //Water Bottle
	global.use_itm[argument2] = 1
	break;
	case 18: //Bullet Portal
	global.use_itm[argument2] = 8
	break;
	case 19: //Sniper Support
	global.use_itm[argument2] = 8
	break;
	case 20: //Healing Gland
	global.use_itm[argument2] = 12
	break;
	case 21: //Essence of Greed
	global.use_itm[argument2] = 1
	break;
	case 22: //AimBot
	global.use_itm[argument2] = 5
	break;
	case 23: //Silver Bullet
	global.use_itm[argument2] = 6
	break;
	case 24: //Die
	global.use_itm[argument2] = 7
	break;
	case 25: //Blizzard
	global.use_itm[argument2] = 6
	break;
	case 26: //Pot O' Gold
	global.use_itm[argument2] = 3
	break;
	case 27: //Essence of Rest
	global.use_itm[argument2] = 1
	set_max = false
	shrink_charge = false
	break;
	case 28: //Present
	global.use_itm[argument2] = 3
	break;
	case 29: //Powerful Powershield
	global.use_itm[argument2] = 4
	break;
	case 30: //Nuke
	global.use_itm[argument2] = global.wave_max - 1
	set_max = false
	shrink_charge = false
	break;
	case 31: //Portable Button
	global.use_itm[argument2] = -10 //-10 is for no charge
	set_max = false
	shrink_charge = false
	break;
	case 32: //Redo
	global.redo_map = ds_map_create()
	ds_map_add(global.redo_map, "hp", global.hp)
	ds_map_add(global.redo_map, "money", global.money)
	ds_map_add(global.redo_map, "shield", global.shields[0])
	ds_map_add(global.redo_map, "powershields", objPlayer.powershield_amount)
	ds_map_add(global.redo_map, "got_pickup", false)
	ds_map_add(global.redo_map, "pickup", 0)
	ds_map_add(global.redo_map, "alien_charge", global.use_itm[4])
	global.use_itm[argument2] = 1
	break;
	case 33: //Morphine
	ds_map_add(global.item_map, "morphine", 0)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 34: //Shield Converter
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 35: //Powershield Converter
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 36: //Blender
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 37: //Essence of Pampering
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 38: //Demonic Gift
	global.use_itm[argument2] = 2
	break;
	case 39: //Death's Cup
	ds_map_add(global.item_map, "deaths_cup", 0)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 40: //Faulty Powershield
	global.use_itm[argument2] = 1
	shrink_charge = false
	break;
	case 41: //Big Chunk
	global.use_itm[argument2] = 15
	shrink_charge = false
	break;
	case 42: //Small Chunk
	global.use_itm[argument2] = 2
	break;
	case 43: //Garnet
	ds_map_add(global.item_map, "garnet", 1)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 44: //Jade
	ds_map_add(global.item_map, "jade", 1)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 45: //Topaz
	ds_map_add(global.item_map, "topaz", 1)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 46: //Aquamarine
	ds_map_add(global.item_map, "aquamarine", 1)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 47: //Amber
	ds_map_add(global.item_map, "amber", 1)
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 48: //Demon Altar
	global.use_itm[argument2] = -10
	set_max = false
	shrink_charge = false
	break;
	case 49: //Destruction
	global.use_itm[argument2] = 5
	break;
	case 50: //Hungry Bullets
	global.use_itm[argument2] = 5
	break;
	}

	if global.use_itm[argument2] - global.use_charge_shrink > 1 and shrink_charge = true
	{
	global.use_itm[argument2] -= global.use_charge_shrink
	}
	else if shrink_charge = true
	{
	global.use_itm[argument2] = 1
	}

	if set_max = true global.use_itm[argument1] = global.use_itm[argument2]



}
