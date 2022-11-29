function player_attr() {
	switch(sprite_index)
	{
	    case sprPlayer:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1 //The damage multiplier,
	    argument1 = 1
	    argument2 = 1
	    argument3 = 1
	    argument4 = 1 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 20 //BASE 20 (15 before buff)
	    ds_list_add(global.item_add, 15)
	    break;
    
	    case sprPlayerTurf:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1.2 //The damage multiplier,
	    argument1 = 1.2 //
	    argument2 = 1.2
	    argument3 = 1
	    argument4 = 1 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 18 //BASE 20 (15 before buff)
	    break;
    
	    case sprPlayerSpice:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1 //The damage multiplier,
	    argument1 = 1.2 //fire rate
	    argument2 = 0.8 //accuracy
	    argument3 = 0.65 //shot speed
	    argument4 = 1.75 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 24 //BASE 20 (17 before buff)
	    break;
    
	    case sprPlayerAlien:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1.1 //The damage multiplier,
	    argument1 = 1.2
	    argument2 = 1
	    argument3 = 0.8
	    argument4 = 0.4 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 12 //BASE 20 (12 before buff)
	    global.use_itm[0] = 4
	    use_item_check(0, 1, 2)
	    break;
    
	    case sprPlayerNoodle:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 0.8 //The damage multiplier,
	    argument1 = 0.7
	    argument2 = 1
	    argument3 = 1
	    argument4 = 1.3 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 10 //BASE 20 (8 before buff)
	    break;
    
	    case sprPlayerCriminal:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1.3 //The damage multiplier,
	    argument1 = 1.2
	    argument2 = 1.1
	    argument3 = 1
	    argument4 = 1.5 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 17 //BASE 20 (13 before buff)
	    global.use_itm[0] = 3
	    use_item_check(0, 1, 2)
	    image_speed = 0.04
	    break;
    
	    case sprPlayerBoneBoy:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1 //The damage multiplier,
	    argument1 = 0.9
	    argument2 = 1
	    argument3 = 1.4
	    argument4 = 1.3 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 14 //BASE 20 (10 before buff)
	    ds_list_add(global.item_add, 16)
	    ds_list_add(global.item_add, 17)
	    image_speed = 0.01
	    break;
    
	    case sprPlayerDastardlyDevil:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1.4 //The damage multiplier,
	    argument1 = 1.65
	    argument2 = 1.4
	    argument3 = 0.6
	    argument4 = 0.2 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 11 //BASE 20 (10 before buff)
	    global.use_itm[0] = 12
	    use_item_check(0, 1, 2)
	    break;
    
	    case sprPlayerDynaMike:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1.1 //The damage multiplier,
	    argument1 = 1.2
	    argument2 = 1.8
	    argument3 = 0.4
	    argument4 = 0.9 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 12 //BASE 20 (9 before buff)
	    ds_map_add(global.item_map, "gunpowder", 1)
	    break;
    
	    case sprPlayerDisease:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1 //The damage multiplier,
	    argument1 = 1
	    argument2 = 1
	    argument3 = 1
	    argument4 = 1 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 45 //BASE 20 (35 before buff)
	    global.shot_speed = 0.6
	    ds_map_add(global.item_map, "toxic", 1)
	    global.enemy_hp -= 0.15
	    break;
    
	    case sprPlayerSpiritOfDespair:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1 //The damage multiplier,
	    argument1 = 1
	    argument2 = 1
	    argument3 = 1
	    argument4 = 1 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = 1 //BASE 20 (35 before buff)
	    ds_list_add(global.item_add, 78)
	    break;
    
	    case sprPlayerRandoObbles:
	    //Player attributes (multipliers)
	    /*
	    argument0 = 1 //The damage multiplier,
	    argument1 = 1
	    argument2 = 1
	    argument3 = 1
	    argument4 = 1 //higher proc chance for items, better nanodoctors, etc?
	    */
	    global.hp = irandom_range(1, 35) //BASE 20 (35 before buff)
	    weapon = irandom(sprite_get_number(sprGun) - 1)
    
	    what_is_second = choose("passive", "active", "active", "nothing")
	    var second_item = irandom(sprite_get_number(sprItem) - 1);
	    var first_item = irandom(sprite_get_number(sprItem) - 1);
    
	    if first_item = second_item
	    {
	        if second_item = 0
	        {
	        first_item = irandom_range(1, sprite_get_number(sprItem) - 1);
	        }
        
	        if second_item = sprite_get_number(sprItem) - 1
	        {
	        first_item = irandom_range(0, sprite_get_number(sprItem) - 2);
	        }
        
	        if second_item != sprite_get_number(sprItem) - 1 and second_item != 0
	        {
	        first_item = choose(irandom_range(0, second_item - 1), irandom_range(second_item + 1, sprite_get_number(sprItem) - 1))
	        }
	    }
    
	    ds_list_add(global.item_add, first_item)
    
	        switch(what_is_second)
	        {
	        case "passive":
	        ds_list_add(global.item_add, second_item)
	        break;
	        case "active":
	        global.use_itm[0] = irandom(sprite_get_number(sprUseItem) - 1)
	        break;
	        //nothing gives you nothing!!!!
	        }
	    break;
    
	    case sprPlayerNinja:
	    global.hp = 5
	    break;
    
	    case sprPlayerTechie:
	    global.hp = 10
	    break;
    
	    case sprPlayerLootmaster:
	    global.hp = 15
	    break;
	}

	if global.challenge = 1 {
	global.hp = 3
	}

	if global.challenge = 3 {
	global.hp = 60
	}

	if global.challenge = 6
	{
	weapon = 20
	global.money = 150
	}



}
