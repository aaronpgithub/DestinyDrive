repeat(4) instance_create(x, y - 30, objBuyButton)

instance_create(x, y - 30, objExitButton)

if global.level = "wasteland"
{
//audio_sound_gain(sndWastelandMusicShop, 1, 1000)
//audio_sound_gain(sndWastelandMusic, 0, 1000)
}

if global.level = "swamp"
{
//audio_sound_gain(sndSwampShopMusic, 1, 1000)
//audio_sound_gain(sndSwampMusic, 0, 1000)
}

if global.level = "forest"
{
//audio_sound_gain(sndForestMusicShop, 1, 1000)
//audio_sound_gain(sndForestMusic, 0, 1000)
//audio_sound_gain(sndForestMusicFire, 0, 1000)
}

bye = false //Variable for exiting the shop
global.shop_wave_add = true

text_x = x - 105
text_y = y - 190

text_amount = 0

shop_string_set()

instance_create(x - 105, y - 167, objShopkeeper)

if ds_map_exists(global.item_map, "relic_alien")
{
global.use_itm[1] = global.use_itm[2]
global.use_itm[4] = global.use_itm[5]
}


	var use_item_chance = 0;

	if ds_map_exists(global.item_map, "high_stock") {
		if global.use_itm[0] = -1 {
			use_item_chance = irandom_range(0, 3);
		} else use_item_chance = irandom_range(0, 6);
	} else {
		if global.use_itm[0] = -1 {
			if frac(global.level_number / 2) = 0 {
				use_item_chance = 1
			} else use_item_chance = random(1)
		} use_item_chance = random(1)
	}

    with(instance_find(objBuyButton, 0))
    {
    buy_type = 0
	
		if ds_map_exists(global.item_map, "high_stock") {
			if use_item_chance = 0 buy_type = 1
		}
    }
    
    with(instance_find(objBuyButton, 1))
    {
	buy_type = 0
	//use item will always be there on odd levels if you dont have one yet, but random chance on even levels
		if !ds_map_exists(global.item_map, "high_stock") {
			if use_item_chance >= 0.7 buy_type = 1
		} else {
			if use_item_chance = 1 buy_type = 1
		}
    }
    
    with(instance_find(objBuyButton, 2))
    {
    buy_type = 2
	
		if ds_map_exists(global.item_map, "high_stock") {
			buy_type = 0
			if use_item_chance = 2 buy_type = 1
		}
    }
    
    with(instance_find(objBuyButton, 3))
    {
	buy_type = 3

		if ds_map_exists(global.item_map, "high_stock") {
			buy_type = 0
			if use_item_chance = 3 buy_type = 1
		}
    }
	
	with(objBuyButton) {
		if buy_type = 1 and ds_map_exists(global.item_map, "box_of_finality") buy_type = 0
	}

