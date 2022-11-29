event_inherited()

parentt = true

switch(global.level)
{
case "wasteland":
price = 35
break;
case "swamp":
price = 100
break;
case "forest":
price = 140
break;
case "volcano":
price = 190
break;
case "snow":
price = 240
break;
case "hell":
price = 240
break;
}

if !ds_map_exists(global.item_map, "scarecrow")
{
mimic = false//choose(false, false, false, false, false, false, true) mimics arent that fun
}
else
{
mimic = false
}

mimic_frame = -1
alarm[5] = random_range(100, 600)

my_playcol = noone

if ds_map_exists(global.item_map, "relic_crim")
{
    var mon_chn = random(1);
    
    if mon_chn >= 0.5
    {
    price = 0
    }
}

    if !instance_exists(objShop) and !instance_exists(objBuyButton)
    {
        if !ds_map_exists(global.item_map, "entp_medal")
        {
        image_index = ds_list_find_value(global.item_pool, 0)
        }
        else
        {
        image_index = ds_map_find_value(global.item_map, "entp_medal")
        ds_map_delete(global.item_map, "entp_medal")
        }
    }
    
    buy_id = image_index
    
    if instance_exists(objShopParent)
    {
    mimic = false
    }

    /*
    if !instance_exists(objShop) and parentt = true
    {
    var iteinst = instance_create(x, y, objItem)
    var iteinst2 = instance_create(x, y, objItem)
    
        with(iteinst)
        {
        stopping_point = (room_width / 2) - 64
        parentt = false
        }
        
        with(iteinst2)
        {
        stopping_point = (room_width / 2) + 64
        parentt = false
        }
    }
    

/* */
/*  */
