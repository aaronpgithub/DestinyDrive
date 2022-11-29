/// @description Insert description here
// You can write your code in this editor

image_speed = 0

t = 0

pickup_present = false
pickup_from_wave = false

pickup_speed = 0.7
if ds_map_exists(global.item_map, "spiderweb") pickup_speed *= 0.5
if ds_map_exists(global.item_map, "pirates_medal") pickup_speed *= 0.5

//if instance_number(objPickup) - 1 > 1 instance_destroy()

alarm[0] = 1
move_time = 60

pickup_eat = false
pickup_pool = ds_list_create()

pickup_from_chest = false //pickup that came from a chest
unchangable = false

movement_type = ""

transformed = false