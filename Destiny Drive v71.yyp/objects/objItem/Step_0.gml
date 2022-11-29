event_inherited()

collision_x = x
collision_y = y + 40
collision_radius = 16

with(objEnemyBulletParent) {
instance_destroy()
}

    if global.items_got < 0 and !instance_exists(objShop) instance_destroy()
    
if mimic = true
{
    if mimic_frame > -1
    {
    mimic_frame += 0.2
    }
    
    if mimic_frame > sprite_get_number(sprMimicLick) - 1
    {
    mimic_frame = -1
    }
}


    if instance_exists(objItem) and !instance_exists(objShop)
    {
        if instance_number(objItem) > 1
        {
			repeat(instance_number(objItem)) {
	            for(var uil = 0; uil < instance_number(objItem); uil++)
	            {
	                if instance_find(objItem, uil).image_index = image_index
	                {
	                    if id < instance_find(objItem, uil).id
	                    {
	                        if global.wave >= global.wave_max {
								image_index = ds_list_find_value(boss_item_pool, ds_list_find_index(boss_item_pool, image_index) + 1)
							} else {
								image_index = ds_list_find_value(shop_item_pool, ds_list_find_index(shop_item_pool, image_index) + 1)
							}
						}
	                }
	            }
			}
        }
    }
	
	buy_id = image_index

var playcoly2 = collision_circle(collision_x, collision_y, collision_radius, objPlayer, true, true)
if !instance_exists(objShop) and playcoly2 != noone
{
item_string()
}

