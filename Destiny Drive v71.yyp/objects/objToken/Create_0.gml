movement_type = choose("normal", "sine", "arcsine")
pickup_eat = false
t = 0
pickup_speed = 0.35

if ds_map_exists(global.item_map, "spiderweb") pickup_speed *= 0.5
if ds_map_exists(global.item_map, "pirates_medal") pickup_speed *= 0.5
player_collected = false

override_token_add = false

transformed = false