function scrItemCheck() {
	//FOR DPS INCREASING ITEMS, IT SHOULD MAKE YOU DO NO MORE THAN 15% MORE DAMAGE. ENEMIES GET STRONGER BY 20% EACH LEVEL

	switch(ds_list_find_value(global.item_add, 0))
	{
	case 0: //Acid Flask
	global.dmg += 0.12
	break;

	case 1: //Scales
	global.hp += 5
	if objPlayer.max_hp > 0 objPlayer.max_hp += 5
	break;

	case 2: //Wacky Mushroom
	global.enemy_spd -= 0.07
	break;

	case 3: //Magnetic Liquid
	ds_map_add(global.item_map, "homing", 0.05)
	break;

	case 4: //Panic Button
	ds_map_add(global.item_map, "rocket", 0.25)
	break;

	case 5: //Sugar
	global.fire_rate -= 0.1
	break;

	case 6: //Bag of Winds
	global.shot_speed += 0.1
	break;

	case 7: //Glasses
	global.accuracy -= 0.2
	break;

	case 8: //Fragile Spirit
	ds_map_add(global.item_map, "spirit", 1)
	break;

	case 9: //Adrenaline
	ds_map_add(global.item_map, "adrenaline", 1)
	break;

	case 10: //Hard Hat
	ds_map_add(global.item_map, "hard_hat", 1)
	global.shields[1] += 1
	break;

	case 11: //Clover
	global.luck += 0.5
	break;

	case 12: //Warp pad
	ds_map_add(global.item_map, "wrap", 1)
	break;

	case 13: //Wackier Mushroom
	global.enemy_spd -= 0.1
	global.shot_speed += 0.1
	break;

	case 14: //Heli Turret
	var inst, inst2;

	    if objGlobalControl.coop = true
	    {
	        inst2 = instance_create(x, y, objHeliTurret)

	        with(inst2)
	        {
	        rounds = -40
	        parent_object = instance_find(objPlayer2, 0)
	        }
	    }    

	inst = instance_create(x, y, objHeliTurret)

	    with(inst)
	    {
	    rounds = -40
	    parent_object = instance_find(objPlayer, 0)
	    }
	break;

	case 15: //Blood Fangs
	ds_map_add(global.item_map, "bld_fang", 1)
	break;

	case 16: //Screamer
	ds_map_add(global.item_map, "screamer", 1)
	break;

	case 17: //Guardian Angel
	ds_map_add(global.item_map, "g_angel", 0.25)
	break;

	case 18: //Big Buckshot
	global.fire_rate += 2.9
	global.bullet_amt += 2
	global.accuracy += 0.2
	break;

	case 19: //Chili Pepper
	global.hp += 2
	objPlayer.max_hp += 2
	global.dmg += 0.05
	global.fire_rate -= 0.05
	break;

	case 20: //Gunpowder Blood
	ds_map_add(global.item_map, "battery_bullet", 1)
	break;

	case 21: //Residual Luck
	ds_map_add(global.item_map, "res_luck", 0)
	break;

	case 22: //Cigar
	    if objPlayer.max_hp > 4
	    {
	    objPlayer.max_hp -= 4
	    }
	    else
	    {
	    if objPlayer.max_hp > 0 objPlayer.max_hp = 1
	    }
    
	    ds_map_add(global.item_map, "cigar", 1)
	break;

	case 23: //Deaths Reward
	ds_map_add(global.item_map, "death", 1)
	break;

	case 24: //Gambling Charm
	ds_map_add(global.item_map, "gamble_charm", 1)
	break;

	case 25: //Blood Battery
	ds_map_add(global.item_map, "bld_battery", 1)
	break;

	case 26: //Second Heart
	ds_map_add(global.item_map, "second_heart", 1)
	break;

	case 27: //Gun Permit
	ds_map_add(global.item_map, "gun_perm", 1)
	break;

	case 28: //High Stock
	ds_map_add(global.item_map, "high_stock", 1)
	break;

	case 29: //Reverse Warp Pad
	ds_map_add(global.item_map, "rev_warp", 1)
	break;

	case 30: //Relic of Pip
	global.hp += 3
	objPlayer.max_hp += 3
	global.dmg += 0.05
	global.fire_rate -= 0.07
	global.accuracy -= 0.2
	global.shot_speed += 0.15
	global.luck += 0.2
	break;

	case 31: //Relic of Spice
	ds_map_add(global.item_map, "spice_relic", 0.1)
	break;

	case 32: //Relic of Dyna-Mike
	ds_map_add(global.item_map, "dyna_relic", 0.1)
	break;

	case 33: //Hyper Gemstone
	ds_map_add(global.item_map, "hyper_gemstone", 0)
	break;

	case 34: //Broken Glasses
	global.accuracy += 0.5
	break;

	case 35: //Training Bullets
	ds_map_add(global.item_map, "train_bul", 1)
	objPlayer.bullet_scale += 0.3
	global.dmg += 0.02
	break;

	case 36: //Thorn Bullet
	ds_map_add(global.item_map, "thorns", 1)
	break;

	case 37: //Relic of Turf
	ds_map_add(global.item_map, "relic_turf", 1)
	break;

	case 38: //Heavy Barrel
	global.dmg += 0.15
	global.fire_rate += 0.2
	break;

	case 39: //Greasy Bullets
	global.dmg -= 0.2
	global.fire_rate -= 0.15
	break;

	case 40: //Relic of Criminal
	ds_map_add(global.item_map, "relic_crim", 1)
	break;

	case 41: //Relic of Despair
	    for(var despair_relic = 3; despair_relic > 0; despair_relic--)
	    {
	    var inst = instance_create(x, y, objDespairShield)
    
	        with(inst)
	        {
	        angle = 120 * despair_relic
	        }
	    }
	break;

	case 42: //Cake
	global.hp += 3
	objPlayer.max_hp += 3
	global.shot_speed += 0.15
	global.fire_rate -= 0.05
	break;

	case 43: //Relic of Bone Boy
	ds_map_add(global.item_map, "relic_bone", 0.08)
	break;

	case 44: //Skill Bullets
	ds_map_add(global.item_map, "skill_bul", 1)
	objPlayer.bullet_scale -= 0.5
	global.dmg += 0.1
	global.accuracy -= 0.5
	break;

	case 45: //Rage potion
	ds_map_add(global.item_map, "rage_pot", 0)
	break;

	case 46: //Overclocked Battery
	global.use_time_multiplier += 0.35
	break;

	case 47: //Hamster Wheel
	global.use_charge_shrink += 1
	use_item_check(0, 1, 2)

	    if objPlayer.sprite_index = sprPlayerAlien
	    {
	    use_item_check(3, 4, 5)
	    }
	break;

	case 48: //Complimentary Gift
	ds_map_add(global.item_map, "comp_gift", 1)
	break;

	case 49: //Super Ponger
	instance_create(objPlayer_x, objPlayer_y, objBrickBreaker)
	break;

	case 50: //Accuracy Cream
	global.shot_speed -= 0.15
	ds_map_add(global.item_map, "homing", 0.05)
	break;

	case 51: //Sunglasses
	ds_map_add(global.item_map, "sunglass", 1)
	global.enemy_spd -= 0.15
	break;

	case 52: //Brave Spirit
	ds_map_add(global.item_map, "brave_spirit", 1)
	break;

	case 53: //Heart of Fire
	ds_map_add(global.item_map, "heart_fire", 1)
	break;

	case 54: //Heart of Ice
	ds_map_add(global.item_map, "heart_ice", 1)
	break;

	case 55: //Shuffle Candy
	    var stat_up = choose("damage", "fire rate", "shot speed", "accuracy", "luck")
	    var stat_down = choose("damage", "fire rate", "shot speed", "accuracy", "luck")
    
	    if stat_down = stat_up
	    {
	        if stat_up = "shot speed"
	        {
	        stat_down = choose("damage", "fire rate", "accuracy", "luck")
	        }
	        else
	        {
	        stat_down = "shot speed"
	        }
	    }
    
	    switch(stat_up)
	    {
	        case "damage":
	        global.dmg += 0.15
	        break;
	        case "fire rate":
	        global.fire_rate -= 0.15
	        break;
	        case "shot speed":
	        global.shot_speed += 0.15
	        break;
	        case "accuracy":
	        global.accuracy -= 0.25
	        break;
	        case "luck":
	        global.luck += 0.4
	        break;
	    }
    
	    switch(stat_down)
	    {
	        case "damage":
	        global.dmg -= 0.15
	        break;
	        case "fire rate":
	        global.fire_rate += 0.15
	        break;
	        case "shot speed":
	        global.shot_speed -= 0.15
	        break;
	        case "accuracy":
	        global.accuracy += 0.25
	        break;
	        case "luck":
	        global.luck -= 0.4
	        break;
	    }
    
	break;

	case 56: //Worker Vest
	ds_map_add(global.item_map, "work_vest", 1)
	global.shields[1] += 1
	break;

	case 57: //Best Friend
	instance_create(x, y, objBestFriend)
	break;

	case 58: //Rubber Bullets
	ds_map_add(global.item_map, "rubber_bul", 1)
	break;

	case 59: //Balloon
	instance_create(x, y, objBalloon)
	break;

	case 60: //The Developer's Curse
	global.dmg += 0.4
	global.fire_rate += 0.2
	global.accuracy += 0.2
	global.shot_speed -= 0.3
	global.luck -= 0.4
	break;

	case 61: //The Developer's Dream
	global.dmg -= 0.4
	global.fire_rate -= 0.2
	global.accuracy -= 0.2
	global.shot_speed += 0.3
	global.luck += 0.5
	break;

	case 62: //Bull's Eye
	global.accuracy -= 0.2
	global.luck += 0.3
	break;

	case 63: //The Big Hurt
	global.dmg += 0.5
	global.shot_speed -= 0.6
	global.fire_rate += 0.2
	break;

	case 64: //Essence of Excitement
	ds_map_add(global.item_map, "ess_exci", 1)
	break;

	case 65: //Essence of Bravery
	ds_map_add(global.item_map, "ess_brav", 1)
	break;

	case 66: //Essence of Stupidity
	global.accuracy -= 0.2
	global.shot_speed += 0.2
	break;

	case 67: //Essence of Patience
	objPlayer.max_hp *= 2
	global.hp *= 2
	global.dmg /= 2
	global.dmg *= 0.7
	break;

	case 68: //Lightning Mind
	global.use_time_multiplier += 0.20
	global.use_charge_shrink += 1
	use_item_check(0, 1, 2)

	    if objPlayer.sprite_index = sprPlayerAlien
	    {
	    use_item_check(3, 4, 5)
	    }
	break;

	case 69: //Clarity Pill
	    if global.dmg < 1
	    {
	    global.dmg = 1
	    }
    
	    if global.fire_rate > 1
	    {
	    global.fire_rate = 1
	    }
    
	    if global.shot_speed < 1
	    {
	    global.shot_speed = 1
	    }
    
	    if global.accuracy > 1
	    {
	    global.accuracy = 1
	    }
    
	    if global.luck < 1
	    {
	    global.luck = 1
	    }
	break;

	case 70: //Small Battery
	global.use_time_multiplier -= 0.80
	global.use_charge_shrink += 7
	use_item_check(0, 1, 2)

	    if objPlayer.sprite_index = sprPlayerAlien
	    {
	    use_item_check(3, 4, 5)
	    }
	break;

	case 71: //Whirligig
	ds_map_add(global.item_map, "whirl", 1)
	global.shot_speed += 0.2
	break;

	case 72: //Scarecrow
	ds_map_add(global.item_map, "scarecrow", 1)
	break;

	case 73: //Book of Monsters
	ds_map_add(global.item_map, "book_of_monsters", 1)
	break;

	case 74: //Relic of Disease
	ds_map_add(global.item_map, "relic_disease", 1)
	break;

	case 75: //Relic of Dastardly Devil
	instance_create(x, y, objFriendlyDevil)
	break;

	case 76: //Bag of Tokens
	global.money += global.wave_max - 2
	break;

	case 77: //Golden Rose
	ds_map_add(global.item_map, "golden_rose", 1)
	break;

	case 78: //Spirit Heart
	ds_map_add(global.item_map, "spirit_heart", 1)
	global.shields[1] += 1
	break;

	case 79: //Philosophers' Eye
	global.accuracy = 0
	break;

	case 80: //Magnet
	ds_map_add(global.item_map, "magnet", 1)
	break;

	case 81: //Treasure Map
	ds_map_add(global.item_map, "treasure_map", 1)
	break;

	case 82: //Treasure Chest
	ds_map_add(global.item_map, "treasure_chest", 1)
	break;

	case 83: //A Good Meal
	objPlayer.max_hp += 1
	objPlayer.spirit_max_hp += 1
	global.hp += 1
	break;

	case 84: //Granola
	objPlayer.max_hp += 3
	//if stink eye doesnt exist
	if objPlayer.max_hp > 0 global.hp = objPlayer.max_hp
	break;

	case 85: //Potato Chips
	objPlayer.max_hp += 3
	break;

	case 86: //Spiderweb
	ds_map_add(global.item_map, "spiderweb", 0)
	break;

	case 87: //Bullet Chain
	ds_map_add(global.item_map, "bul_chain", 1)
	break;

	case 88: //Relic of Alien
	ds_map_add(global.item_map, "relic_alien", 1)
	break;

	case 89: //Gum
	ds_map_add(global.item_map, "gum", 1)
	break;

	case 90: //Champion Repellent
	ds_map_add(global.item_map, "champ_repel", 1)
	break;

	case 91: //Entrepeneurship Medallion
	instance_create(0, 0, objEntpMedallionControl)
	break;

	case 92: //Pikum
	instance_create(20, objPlayer_y, objPickupEater)
	break;

	case 93: //Unicorn Horn
	ds_map_add(global.item_map, "unicorn_horn", 1)
	global.dmg += 0.07
	break;

	case 94: //Rare Feather
	ds_map_add(global.item_map, "rare_feather", 1)
	break;

	case 95: //Pickaxe
	if global.wave >= global.wave_max ds_map_add(global.item_map, "pickaxe", 0)
	if global.wave < global.wave_max ds_map_add(global.item_map, "pickaxe", 1)
	break;

	case 96: //Relic of Rando
	ds_list_add(global.item_add, ds_list_find_value(global.item_pool, 0))
	ds_list_add(global.item_add, ds_list_find_value(global.item_pool, 1))

	ds_list_add(global.items, ds_list_find_value(global.item_add, 1))
	ds_list_add(global.items, ds_list_find_value(global.item_add, 2))

	ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 1)))
	ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 2)))
	break;

	case 97: //Ruby Ring
	ds_map_add(global.item_map, "ruby_ring", 0)
	global.dmg -= 0.2
	break;

	case 98: //Emerald Ring
	ds_map_add(global.item_map, "emerald_ring", 1)
	global.shot_speed -= 0.4
	break;

	case 99: //Sapphire Ring
	ds_map_add(global.item_map, "sapphire_ring", 1)
	break;

	case 100: //Beehive
	ds_map_add(global.item_map, "beehive", 1)
	break;

	case 101: //Coupon
	ds_map_add(global.item_map, "coupon", 1)
	break;

	case 102: //The Hit List
	ds_map_add(global.item_map, "hit_list", 0)
	break;

	case 103: //Toggle Trigger
	ds_map_add(global.item_map, "toggle_trigger", 1)
	break;

	case 104: //Green Root
	objPlayer.max_hp += 5
	global.hp += 5
	ds_map_add(global.item_map, "green_root", 1)
	break;

	case 105: //Bracelet of Protection
	ds_map_add(global.item_map, "brace_prot", 1)
	break;

	case 106: //Steroids
	global.dmg += 0.3
	ds_map_add(global.item_map, "steroids", 1)
	break;

	case 107: //Mystery Meat
	    var meat_stat = choose("damage", "fire rate", "shot speed", "accuracy", "luck")
    
	    switch(meat_stat)
	    {
	        case "damage":
	        global.dmg += choose(-0.15, 0.15)
	        break;
	        case "fire rate":
	        global.fire_rate -= choose(-0.15, 0.15)
	        break;
	        case "shot speed":
	        global.shot_speed += choose(-0.15, 0.15)
	        break;
	        case "accuracy":
	        global.accuracy -= choose(-0.25, 0.25)
	        break;
	        case "luck":
	        global.luck += choose(-0.4, 0.4)
	        break;
	    }
	break;

	case 108: //Strained Eye
	ds_map_add(global.item_map, "strained_eye", 1)
	break;

	case 109: //Bloodshot Eye
	ds_map_add(global.item_map, "bloodshot_eye", 1)
	break;

	case 110: //Glass Eye
	ds_map_add(global.item_map, "glass_eye", 1)
	break;

	case 111: //Your Soul
	global.dmg -= 0.1
	global.shot_speed -= 0.6
	global.fire_rate -= 0.2
	ds_map_add(global.item_map, "homing", 0.05)
	break;

	case 112: //Glitch
	ds_map_add(global.item_map, "glitch", 1)
	break;

	case 113: //Firey Gunpowder
	global.dmg += 0.1
	global.shot_speed += 0.2
	break;

	case 114: //Banana
	objPlayer.max_hp += 5
	global.hp += 5
	global.shot_speed += 0.2
	break;

	case 115: //Ale
	global.dmg += 0.1
	global.shot_speed -= 0.4
	global.accuracy += 0.3
	break;

	case 116: //Flak Shot
	global.dmg -= 0.90
	global.accuracy += 1.5
	global.bullet_amt += 4
	ds_map_add(global.item_map, "flak_shot", 0)
	break;

	case 117: //Duplishot
	ds_map_add(global.item_map, "duplishot", 0)
	break;

	case 118: //Box of Finality
	global.use_itm[0] = irandom(sprite_get_number(sprUseItem) - 1)
	use_item_check(0, 1, 2)
	ds_map_add(global.item_map, "box_of_finality", 0)
	break;

	case 119: //Insta Bullets
	ds_map_add(global.item_map, "insta_bullets", 0)
	break;

	case 120: //Flippy
	instance_create(x, y, objFlippy)
	break;

	case 121: //War Cry
	ds_map_add(global.item_map, "war_cry", 0)
	break;

	case 122: //Nightinggale Lightning
	ds_map_add(global.item_map, "nightinggale_lightning", 0)
	break;

	case 123: //Silly Text
	ds_map_add(global.item_map, "silly_text", 0)
	global.shot_speed += 0.2
	break;

	case 124: //Battery Shield
	ds_map_add(global.item_map, "battery_shield", 0)
	break;

	case 125: //Snow Idol
	instance_create(x, y, objSnowIdol)
	break;

	case 126: //Trash Bag FIX THIS AND RELIC OF RANDO
	ds_map_add(global.item_map, "trash_bag", 0)
	ds_list_add(global.item_add, ds_list_find_value(global.item_pool, 0))
	ds_list_add(global.item_add, ds_list_find_value(global.item_pool, 1))

	ds_list_add(global.items, ds_list_find_value(global.item_add, 1))
	ds_list_add(global.items, ds_list_find_value(global.item_add, 2))

	ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 1)))
	ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 2)))
	break;

	case 127: //Shris Treasure
	ds_map_add(global.item_map, "shris_treasure", 0)
	break;

	case 128: //Giga Volt
	ds_map_add(global.item_map, "giga_volt", 40)
	break;

	case 129: //Venom's Kiss
	instance_create(-320, 0, objVenomsKiss)
	break;

	case 130: //Glamour Muscle
	ds_map_add(global.item_map, "glamour_muscle", 0)
	global.accuracy -= 0.8
	break;

	case 131: //ThunderFinger++
	ds_map_add(global.item_map, "thunderfinger", 0)
	break;

	case 132: //Skin Shield
		if objPlayer.max_hp > 0 {
			ds_map_add(global.item_map, "skin_shield", ceil(objPlayer.max_hp / 2))

			objPlayer.max_hp = ceil(objPlayer.max_hp / 2)
		} else {
			ds_map_add(global.item_map, "skin_shield", ceil(global.hp / 2))
			global.hp = ceil(global.hp / 2)
		}
	global.shields[0] += ds_map_find_value(global.item_map, "skin_shield")
	break;

	case 133: //Icy Cold
	ds_map_add(global.item_map, "icy_cold", 0)
	break;

	case 134: //Snake Charm
	ds_map_add(global.item_map, "snake_charm", 0)
	break;

	case 135: //Blood Powered Nanocomputation
	ds_map_add(global.item_map, "bp_nano", 0)
	break;

	case 136: //fractured_gemstone
	ds_map_add(global.item_map, "fractured_gemstone", 0)
	break;

	case 137: //Jumper Cables
	ds_map_add(global.item_map, "jumper_cable", 0)
	break;

	case 138: //Essence of Pity
	ds_map_add(global.item_map, "essence_pity", 0)
	break;

	case 139: //Lil' Pupper
	instance_create(objPlayer.x, objPlayer.y, objLilPupper)
	break;

	case 140: //Lil' Puffer
	instance_create(objPlayer.x, objPlayer.y, objLilPuffer)
	break;

	case 141: //Blood Gemstone
	ds_map_add(global.item_map, "blood_gemstone", 0)
	break;

	case 142: //Tonic
	    ds_map_add(global.item_map, "tonic", choose("damage", "fire rate", "shot speed", "accuracy", "luck"))
    
	    switch(ds_map_find_value(global.item_map, "tonic"))
	    {
	        case "damage":
	        global.dmg += 0.05
	        break;
	        case "fire rate":
	        global.fire_rate -= 0.05
	        break;
	        case "shot speed":
	        global.shot_speed += 0.15
	        break;
	        case "accuracy":
	        global.accuracy -= 0.1
	        break;
	        case "luck":
	        global.luck += 0.1
	        break;
	    }
	break;

	case 143: //Body Armor
	global.shields[0] += 25
	break;

	case 144: //Upset Stomach
	ds_map_add(global.item_map, "upset_stomach", 0)
	break;

	case 145: //Refrigerator
	ds_map_add(global.item_map, "fridge", 1)
	break;

	case 146: //Book of Mathematics
	ds_map_add(global.item_map, "book_math", 0)
	break;

	case 147: //Apple
	global.hp += 5
	objPlayer.max_hp += 5
	ds_map_add(global.item_map, "apple", 0)
	break;

	case 148: //Growth Ray
	ds_map_add(global.item_map, "growth_ray", 0)
	objPlayer.bullet_scale += 1.3
	break;

	case 149: //Closed Eye
	ds_map_add(global.item_map, "closed_eye", 0)
	break;

	case 150: //Contact Eye
	ds_map_add(global.item_map, "contact_eye", 0)
	break;

	case 151: //Blind Eye
	ds_map_add(global.item_map, "blind_eye", 0)
	break;

	case 152: //Your Destiny
	ds_map_add(global.item_map, "your_destiny", 1)
	break;

	case 153: //Large Gemstone
		if instance_exists(objPlayer)
			objPlayer.powershield_max_time += room_speed
	break;

	case 154: //Tech Bullets
	ds_map_add(global.item_map, "tech_bullets", 0)
	break;

	case 155: //Amethyst Ring
	instance_create(x, y, objAmethystGhost)
	break;

	case 156: //Essence of Indecision
	ds_map_add(global.item_map, "essence_indecision", 0)
	break;

	case 157: //Anomaly
	ds_map_add(global.item_map, "anomaly", 0)
	break;

	case 158: //Telekinetic Transfusion Generator
	ds_map_add(global.item_map, "telekinetic_transfusion", 0)
	break;

	case 159: //Angelic Savior
	ds_map_add(global.item_map, "angelic_savior", 1)
	break;

	case 160: //Demon Contract
	ds_map_add(global.item_map, "demon_contract", 0)
	break;

	case 161: //Pirate's Medallion
	ds_map_add(global.item_map, "pirates_medal", 0)
	break;

	case 162: //Bad Connection
	ds_map_add(global.item_map, "bad_connection", 0)
	objPlayer.player_scale = 0.8
	break;

	case 163: //Relic of Noodle
	global.dmg -= 0.8
	global.fire_rate *= 0.2
	break;

	case 164: //Fool's Token
	ds_map_add(global.item_map, "fools_token", 1)
	break;

	case 165: //Participation Award
	ds_map_add(global.item_map, "participation_award", 0)
	break;

	case 166: //Pasta
	global.accuracy += 10
	global.fire_rate -= 0.2
	ds_map_add(global.item_map, "rubber_bul", 0)
	break;

	case 167: //Anti Anomaly
	ds_map_add(global.item_map, "anti_anomaly", 0)
	break;

	case 168: //Big Heart
	objPlayer.max_hp = -1
	break;

	case 169: //Blind Faith
	ds_map_add(global.item_map, "blind_faith", 0)
	global.use_itm[0] = irandom(sprite_get_number(objUseItem) - 1)
	break;

	case 170: //Bullet Blade
	ds_map_add(global.item_map, "bullet_blade", choose(-1, 1))
	break;

	case 171: //Measuring Cup
	ds_map_add(global.item_map, "measure_cup", 0)
	break;

	case 172: //Planet Bullets
	ds_map_add(global.item_map, "planet_bullet", 1)
	break;

	case 173: //Kind Parasite
	    if objPlayer.max_hp > 4
	    {
	    objPlayer.max_hp -= 4
	    }
	    else
	    {
		    if objPlayer.max_hp > 0 {
				objPlayer.max_hp = 1
			} else {
				if global.hp > 4 global.hp -= 4
			}
	    }

	ds_map_add(global.item_map, "kind_parasite", 0)
	break;

	case 174: //Rubber Gemstone
	ds_map_add(global.item_map, "rubber_gemstone", 0)
	break;

	case 175: //Ghost Bullets
	ds_map_add(global.item_map, "ghost_bullet", 0)
	global.dmg -= 0.4
	break;

	case 176: //Fat
	global.hp += 5
	if objPlayer.max_hp > 0 objPlayer.max_hp += 5
	ds_map_add(global.item_map, "fat", 0)
	break;

	case 177: //Glowing Gemstone
	ds_map_add(global.item_map, "glowing_gemstone", 0)
		if instance_exists(objPlayer) {
			objPlayer.powershield_max_time += room_speed
		}
	break;

	case 178: //Hardened Gemstone
	ds_map_add(global.item_map, "hardened_gemstone", 0)
		if instance_exists(objPlayer) {
			objPlayer.powershield_max_time *= 10
		}
	break;

	case 179: //Robot Bullets
	ds_map_add(global.item_map, "robot_bullet", 0)
	global.dmg += 0.15
	break;

	case 180: //Clover Shield
	ds_map_add(global.item_map, "clover_shield", 0)
	break;

	case 181: //Emergency Bot
	ds_map_add(global.item_map, "emergency_bot", 0)
	break;

	case 182: //Portalhead
	ds_map_add(global.item_map, "rubber_bul", 0)
	ds_map_add(global.item_map, "wrap", 0)
	break;

	case 183: //Hellstone
	ds_map_add(global.item_map, "hellstone", 0)
	global.dmg += 0.2
	break;

	case 184: //Angry Bullets
	ds_map_add(global.item_map, "angry_bullet", 0)
	global.dmg += 0.3
	global.accuracy -= 0.9
	break;

	case 185: //Wavy Bullets
	ds_map_add(global.item_map, "wave_bullet", 0)
	global.fire_rate -= 0.15
	break;

	case 186: //Bark
	global.hp += 5
	if objPlayer.max_hp > 0 objPlayer.max_hp += 5
	global.shields[0] += 3
	break;

	case 187: //Bloodlust
	ds_map_add(global.item_map, "bloodlust", 0)
	break;

	case 188: //Powershield Battery
	ds_map_add(global.item_map, "ps_battery", 0)
	break;

	case 189: //Amoeba Tokens
	ds_map_add(global.item_map, "amoeba_tokens", 0)
	break;

	case 190: //Wonky Bullets
	global.fire_rate -= 0.15
	ds_map_add(global.item_map, "wonky_bullets", 0)
	break;

	case 191: //Baby Gemstone
		if instance_exists(objPlayer)
			objPlayer.powershield_max_time += room_speed * 5
	ds_map_add(global.item_map, "baby_gemstone", 0)
	break;

	case 192: //Bloody Coin
	global.dmg += 0.05
	break;

	case 193: //Vomit
	global.dmg += 0.2
	ds_map_add(global.item_map, "vomit", 0)
	break;

	case 194: //Essence of Anxiety
	ds_map_add(global.item_map, "ess_anxi", 2)
	global.fire_rate -= 0.2;
	break;

	case 195: //Brick
	global.dmg += 0.3
	global.fire_rate -= 0.1
	ds_map_add(global.item_map, "brick", 0)
	break;

	case 196: //Virus
	ds_map_add(global.item_map, "virus", 0)
	break;

	case 197: //Glass Shard
	global.shields[0] += 5
	ds_map_add(global.item_map, "glass_shard", 0)
	break;

	case 198: //Cursed Armor
	objPlayer.hp = 5 //intentionally set hp to five even if above or below
	ds_map_add(global.item_map, "cursed_armor", 240) //timer
	break;

	case 199: //Jet Bullets
	global.dmg += 0.2
	global.shot_speed += 0.3
	ds_map_add(global.item_map, "jet_bullets", 0.2)
	break;
	}

	ds_list_delete(global.item_add, 0)




}
