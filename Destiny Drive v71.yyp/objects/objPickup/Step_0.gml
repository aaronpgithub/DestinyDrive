/// @description Insert description here
// You can write your code in this editor

if alarm[0] > -1 exit;

//convert hearts and shields
if ds_map_exists(global.item_map, "measure_cup") {
	if ( image_index == 0 and global.hp >= objPlayer.max_hp ) image_index = 1;
	if ( image_index == 1 and global.hp < objPlayer.max_hp ) image_index = 0;
}

//if not a chest
if ( image_index != 4 ) image_angle += 9;

if x < -10
{
	if !ds_map_exists(global.item_map, "telekinetic_transfusion") {
		instance_destroy()
	} else {
		if !transformed {
			x = xstart;
			image_angle = 0;
			
			//if the pool has more than one item in the pool, delete the item that was previously chosen
			if ds_list_size(pickup_pool) > 1
				ds_list_delete(pickup_pool, 0);
			
			ds_list_shuffle(pickup_pool);

			image_index = ds_list_find_value(pickup_pool, 0);
		
			//if its a chest
			if image_index == 4 {
				movement_type = "normal";
				pickup_speed *= 0.35;
			}
		} else instance_destroy();
		
		transformed = true; //I put it here so the else wont destroy immediately
	}
}

#region //if pickup eater exists
if x < 0 //if it hits the end of the screen (player missed pickup, it wil, be eaten now!)
{
    if instance_exists(objPickupEater)
    {
		if !ds_map_exists(global.item_map, "telekinetic_transfusion") {
			pickup_eat = true
		} else if transformed = true pickup_eat = true
    }
}

//if pickup is flagged to be eaten and the pickup eater exists, fly towards it to be eaten
if pickup_eat and instance_exists(objPickupEater)
	motion_set(point_direction(x, y, objPickupEater.x, objPickupEater.y), 1);

#endregion /////////

if global.wave <= global.wave_max
	alarm[1] = move_time;

if instance_exists(objShopParent) or instance_exists(objBridge) 
{
    if !pickup_eat {
		instance_destroy();
    }
}

if pickup_eat = false
{
    if ds_map_exists(global.item_map, "magnet")
    {
        if point_distance(x, y, objPlayer_x, objPlayer_y) < 60
        {
			motion_set(point_direction(x, y, objPlayer_x, objPlayer_y), 1)
			movement_type = "normal"
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
	if !ds_map_exists(global.item_map, "blind_eye") {
		motion_set(point_direction(x, y, objPlayer_x, objPlayer_y), 1)
		movement_type = "normal"
	}
}