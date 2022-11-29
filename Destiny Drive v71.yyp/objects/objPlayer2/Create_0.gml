event_inherited()


sprite_index = global.player2
image_speed = 0.2
player_attr()
globalvar plyr;
global.enemy_hp += 1
darken = false

plyr = global.hp

with(instance_find(objPlayer, 0))
{
max_hp += plyr
global.hp = max_hp
}

max_hp = objPlayer.max_hp

if objPlayer.sprite_index != sprite_index
{
    if sprite_index = sprPlayerBoneBoy
    {
        if !is_undefined(ds_list_find_value(global.item_add, 2))
        {
        ds_list_add(global.items, ds_list_find_value(global.item_add, 1))
        ds_list_add(global.items, ds_list_find_value(global.item_add, 2))
        }
    }
    
    if sprite_index = sprPlayerSpiritOfDespair or sprite_index = sprPlayer and object_index != objPlayer2
    {
    ds_list_add(global.items, ds_list_find_value(global.item_add, 0))
    }
}
else
{
darken = true
}

