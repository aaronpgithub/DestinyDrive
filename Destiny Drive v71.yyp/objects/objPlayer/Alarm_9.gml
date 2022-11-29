/// @description deactivating use item, just a script (use_item_deactivate())
/// @function deactivating use item, just a script 
/// @param use_item_deactivate(

use_item_deactivate(use_itm_used2)

if alarm[2] < 0
{
if ds_map_exists(global.item_map, "giga_volt") ds_map_replace(global.item_map, "giga_volt", 40)
}

