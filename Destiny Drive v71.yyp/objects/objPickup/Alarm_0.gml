/// @description Insert description here
// You can write your code in this editor

#region
if unchangable = false {
	ds_list_add(pickup_pool, 0, 1, 2, 3, 4)

		//if you have a pickup eye
		if ds_map_exists(global.item_map, "strained_eye") or ds_map_exists(global.item_map, "bloodshot_eye") 
		or ds_map_exists(global.item_map, "glass_eye") or ds_map_exists(global.item_map, "closed_eye") or ds_map_exists(global.item_map, "contact_eye") {
		ds_list_clear(pickup_pool)
		}

		if ds_map_exists(global.item_map, "bloodshot_eye") ds_list_add(pickup_pool, 0)
		if ds_map_exists(global.item_map, "glass_eye") ds_list_add(pickup_pool, 1)
		if ds_map_exists(global.item_map, "strained_eye") ds_list_add(pickup_pool, 2)
		if ds_map_exists(global.item_map, "contact_eye") ds_list_add(pickup_pool, 3)
		if ds_map_exists(global.item_map, "closed_eye") ds_list_add(pickup_pool, 4)
		//
		
	if pickup_from_chest = true {
		ds_list_delete(pickup_pool, ds_list_find_index(pickup_pool, 4))
	}
	
	if pickup_present = true ds_list_delete(pickup_pool, ds_list_find_index(pickup_pool, 2))

	ds_list_shuffle(pickup_pool)
	
	if !ds_list_empty(pickup_pool) {
	image_index = ds_list_find_value(pickup_pool, 0)
	} else {
		//these three are the only acceptable ones
		image_index = choose(0, 1, 3)
		//hp, shield, powershield
	}
}
#endregion

movement_type = choose("normal", "sine")

if image_index = 4 {
	movement_type = "normal"
	pickup_speed *= 0.35
}

if ds_map_exists(global.item_map, "blind_eye") and unchangable = false and global.wave < global.wave_max {
	pickup_speed = 0
	move_time = instance_number(objPickup) * 20
}

if pickup_from_wave = true {
	if variable_global_exists("redo_map") {
		if ds_map_exists(global.item_map, "redo") {
			if ds_map_find_value(global.redo_map, "got_pickup") = false instance_destroy()
			image_index = ds_map_find_value(global.redo_map, "pickup")
		}
		ds_map_replace(global.redo_map, "pickup", image_index)
		ds_map_replace(global.redo_map, "got_pickup", true)
	}
}