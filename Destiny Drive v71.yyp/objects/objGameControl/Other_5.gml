/// @description destroying weapon pool
ds_list_destroy(global.weapon_pool)
ds_list_destroy(global.item_pool)
if variable_global_exists("redo_map") ds_map_destroy(global.redo_map)

particle_delete_superscript()