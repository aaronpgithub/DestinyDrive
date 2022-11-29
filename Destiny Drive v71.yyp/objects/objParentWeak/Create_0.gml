event_inherited()

if !instance_exists(objRareBird)
{
    var birdchance = random(1)
    
    if birdchance <= 0.15
    {
        if ds_map_exists(global.item_map, "rare_feather")
        {
            with(instance_find(objParentWeak, 0))
            {
            globalvar oldx, oldy;
            oldx = pos_x
            oldy = pos_y
            
            instance_change(objRareBird, false)
            
            pos_x = oldx
            pos_y = oldy
            hp = 90 * global.enemy_hp
            max_hp = hp
            }
        }
    }
}

