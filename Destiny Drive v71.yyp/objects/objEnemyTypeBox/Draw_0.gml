if global.menu = "stats_enemies"
{
    draw_self()
    
    if global.enemy_type_arr[enemy_type] = 1
    {
    draw_sprite_general(sprEnemyPicture, enemy_type, 0, 0, 180, 180, x + 1, y + 1, 0.26, 0.21, 0, c_white, c_white, c_white, c_white, image_alpha)
    }
    else
    {
    draw_sprite_ext(sprLock, 0, x + (sprite_width / 2), y + (sprite_height / 2), 1, 1, 0, c_white, image_alpha)
    }
}

