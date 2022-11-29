/// @description Blind eye
// You can write your code in this editor
pickup_speed = 0.7
if ds_map_exists(global.item_map, "spiderweb") pickup_speed = 0.4

if image_index = 4 {
	movement_type = "normal"
	pickup_speed *= 0.35
}