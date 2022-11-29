big_hp = 0
da_hp = 0

for(enemy_health = instance_number(objEnemyParent) - 1; enemy_health >= 0; enemy_health--)
{
    if instance_find(objEnemyParent, enemy_health).hp > da_hp
    {
    big_hp = enemy_health
    da_hp = instance_find(objEnemyParent, enemy_health).hp
    }
}

parent = true
nighting = false

if ds_map_exists(global.item_map, "nightinggale_lightning") nighting = true

if parent = false
{
alarm[0] = 5
}

