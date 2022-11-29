//debug
global.enemy_type_arr[enemy_type] = 1
//

if global.menu != "stats_enemies"
{
image_alpha = 0
}
else
{
    if y > objStatsHud.y + 105
    {
    if image_alpha > 0
    {
    image_alpha -= 0.2
    }
    }
    else
    {
    if image_alpha < 1
    {
    image_alpha += 0.2
    }
    }
}

y = lerp(y, pos, 0.3)

