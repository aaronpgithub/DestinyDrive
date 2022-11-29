event_inherited()

item_seperate_pool_create()

parentt = true

collision_x = 0
collision_y = 0
collision_radius = 0

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

item_id = 0

my_playcol = noone
    
    buy_id = image_index
    
    if instance_exists(objShopParent)
    {
    mimic = false
    }
