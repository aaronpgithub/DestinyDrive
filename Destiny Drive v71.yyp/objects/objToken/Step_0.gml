image_angle += 9

if x < -10
{
	if !ds_map_exists(global.item_map, "telekinetic_transfusion") {
		instance_destroy()
	} else {
		var jobo = instance_create(330, random_range(130, 190), objPickup)
		
		with(jobo) {
			transformed = true
		}
		
		instance_destroy()
	}
}

#region //if pickup eater exists
if x < 0
{
    if instance_exists(objPickupEater)
    {
		if !ds_map_exists(global.item_map, "telekinetic_transfusion") {
			pickup_eat = true
		}
    }
}

if instance_exists(objPickupEater)
{
    if pickup_eat = true {
    motion_set(point_direction(x, y, objPickupEater.x, objPickupEater.y), 1)
    }
}
#endregion
/////////

if instance_exists(objShopParent) or instance_exists(objBridge) 
{
    if pickup_eat = false {
		override_token_add = true
    instance_destroy()
    }
}

if pickup_eat = false
{
	if ds_map_exists(global.item_map, "golden_rose") {
		global.money += 1
	
		player_collected = true
		instance_destroy()
	}
	
    if ds_map_exists(global.item_map, "magnet")
    {
        if point_distance(x, y, objPlayer_x, objPlayer_y) < 60
        {
        motion_set(point_direction(x, y, objPlayer_x, objPlayer_y), 1)
		movement = "normal"
        }
        else
        {
        pickup_motion(pickup_speed)
        }
    }
    else
    {
    pickup_motion(pickup_speed)
    }
}

if instance_exists(objShop) {
	motion_set(point_direction(x, y, objPlayer_x, objPlayer_y), 1)
	movement = "normal"
}
