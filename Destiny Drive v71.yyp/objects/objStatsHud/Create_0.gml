globalvar i, i2;
var stat_inst;

instance_create_layer(x, y, "Stats", objStatsTab)
instance_create_layer(x + 58, y, "Stats", objEnemiesTab)
instance_create_layer(x + 124, y, "Stats", objItemsTab)
instance_create_layer(x + 25, y + 140, "Stats", objStatArrow)
stat_inst = instance_create_layer(x + 25, y + 130, "Stats", objStatArrow)
global.enemy_box_type = 0
global.enemy_name = ""
global.enemy_desc = ""

global.item_box_type = 0
global.item_name = ""
global.item_desc = ""

with(stat_inst)
{
image_yscale = -1
}

image_speed = 0 

//Enemy
for(i = 0; i < 50; i += 1)
{
var inst;

inst = instance_create_layer(x, y, "Stats", objEnemyTypeBox)

with(inst)
{
    if i <= 3
    {
    x = objStatsHud.x + 5 + ((sprite_width + 1) * i)
    }
    else
    {
        with(instance_find(objEnemyTypeBox, 3))
        {
        x = instance_find(objEnemyTypeBox, 0).x
        }
        
        with(instance_find(objEnemyTypeBox, 4))
        {
        x = instance_find(objEnemyTypeBox, 1).x
        }
        
        with(instance_find(objEnemyTypeBox, 5))
        {
        x = instance_find(objEnemyTypeBox, 2).x
        }
    
    x = instance_find(objEnemyTypeBox, i - (floor((i + 0.1) / 3) * 3)).x
    }
y = objStatsHud.y + 5 + (sprite_height + 1) * floor((i + 0.1) / 3)
pos = objStatsHud.y + 5 + (sprite_height + 1) * floor((i + 0.1) / 3)

enemy_type = global.enemy_box_type
}
//

//Item
global.enemy_box_type += 1
}

for(i2 = 0; i2 < sprite_get_number(sprItem) - 1; i2 += 1)
{
var inst2;

inst2 = instance_create_layer(x, y, "Stats", objItemTypeBox)

    with(inst2)
    {
        if i2 <= 3
        {
        x = objStatsHud.x + 5 + ((sprite_width + 1) * i2)
        }
        else
        {
            with(instance_find(objItemTypeBox, 3))
            {
            x = instance_find(objItemTypeBox, 0).x
            }
            
            with(instance_find(objItemTypeBox, 4))
            {
            x = instance_find(objItemTypeBox, 1).x
            }
            
            with(instance_find(objItemTypeBox, 5))
            {
            x = instance_find(objItemTypeBox, 2).x
            }
        
        x = instance_find(objItemTypeBox, i2 - (floor((i2 + 0.1) / 3) * 3)).x
        }
    y = objStatsHud.y + 5 + (sprite_height + 1) * floor((i2 + 0.1) / 3)
    pos = objStatsHud.y + 5 + (sprite_height + 1) * floor((i2 + 0.1) / 3)
    
    item_type = global.item_box_type
    }

global.item_box_type += 1
}
//

