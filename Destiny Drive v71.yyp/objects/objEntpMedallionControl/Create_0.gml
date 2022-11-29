event_inherited()

sprite_index = noone //removing debug sprite

pause = false
max_player_hp = objPlayer.max_hp

instance_create((room_width / 2) - 30, 170, objEntpMedallionArrow)
instance_create((room_width / 2) + 30, 170, objEntpMedallionArrow)

itm = 0

ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, 91))

instance_create(room_width / 2, 215, objEntpMedallionButton)

app_sprite = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0)