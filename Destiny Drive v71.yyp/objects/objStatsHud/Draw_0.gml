draw_self()
draw_set_font(fnItemFont)

switch(global.menu)
{

case "stats_enemies":
    if global.enemy_type_arr[global.enemy_box_type] = 1
    {
    draw_sprite(sprEnemyPicture, global.enemy_box_type, x + 197, y + 2)
    
    draw_set_halign(fa_left)
    
    enemy_box_stats()
    
    draw_text_colour(x + 85, y + 2, string_hash_to_newline("NAME"), c_white, c_white, c_white, c_white, 1)
    draw_text_colour(x + 85, y + 16, string_hash_to_newline(string(global.enemy_name)), c_white, c_white, c_white, c_white, 1)
    
    draw_text_colour(x + 85, y + 30, string_hash_to_newline("DESCRIPTION"), c_white, c_white, c_white, c_white, 1)
    draw_text_ext_transformed_colour(x + 85, y + 44, string_hash_to_newline(string(global.enemy_desc)), 12, 160, 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
    
    
    
    draw_set_halign(fa_center)
    }
    else
    {
    draw_set_halign(fa_left)
    draw_text_colour(x + 85, y + 19, string_hash_to_newline("This enemy has not been killed."), c_white, c_white, c_white, c_white, 1)
    draw_set_halign(fa_center)
    }
break;

case "stats_items":
    if global.item_type_arr[global.item_box_type] = 1
    {
    draw_sprite(sprItem, global.item_box_type, x + 197, y + 60)
    
    draw_set_halign(fa_left)
    
    item_box_stats()
    
    draw_text_colour(x + 85, y + 2, string_hash_to_newline("NAME"), c_white, c_white, c_white, c_white, 1)
    draw_text_colour(x + 85, y + 16, string_hash_to_newline(string(global.item_name)), c_white, c_white, c_white, c_white, 1)
    
    draw_text_colour(x + 85, y + 30, string_hash_to_newline("DESCRIPTION"), c_white, c_white, c_white, c_white, 1)
    draw_text_ext_transformed_colour(x + 85, y + 44, string_hash_to_newline(string(global.item_desc)), 12, 160, 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
    
    
    
    draw_set_halign(fa_center)
    }
    else
    {
    draw_set_halign(fa_left)
    draw_text_colour(x + 85, y + 19, string_hash_to_newline("This item has not been picked up."), c_white, c_white, c_white, c_white, 1)
    draw_set_halign(fa_center)
    }
break;

case "stats":
draw_set_halign(fa_left)
draw_text_colour(x + 1, y + 1, string_hash_to_newline("GLOBAL"), c_white, c_white, c_white, c_white, 1)
draw_text_colour(x + 1, y + 14, string_hash_to_newline("Enemies Killed: " + string(global.total_enemy_kill)), c_white, c_white, c_white, c_white, 1)
draw_text_colour(x + 1, y + 27, string_hash_to_newline("Deaths: " + string(global.total_deaths)), c_white, c_white, c_white, c_white, 1)
draw_text_colour(x + 1, y + 40, string_hash_to_newline("Bullets Shot: " + string(global.total_bul_shot)), c_white, c_white, c_white, c_white, 1)
draw_text_colour(x + 1, y + 53, string_hash_to_newline("Bullets Hit: " + string(global.total_bul_hit)), c_white, c_white, c_white, c_white, 1)
    if global.total_bul_shot = 0
    {
    draw_text_colour(x + 1, y + 66, string_hash_to_newline("Accuracy: " + "0" + "%"), c_white, c_white, c_white, c_white, 1)
    }
    else
    {
    draw_text_colour(x + 1, y + 66, string_hash_to_newline("Accuracy: " + string(round((global.total_bul_hit / global.total_bul_shot) * 100)) + "%"), c_white, c_white, c_white, c_white, 1)
    }
draw_text_colour(x + 1, y + 79, string_hash_to_newline("Flawless Waves: " + string(global.total_flawless)), c_white, c_white, c_white, c_white, 1)
draw_text_colour(x + 1, y + 92, string_hash_to_newline("Time Played: " + string(objGlobalControl.days) + ":" + string(objGlobalControl.hours_string) + ":" + string(objGlobalControl.minutes_string) + ":" + string(objGlobalControl.seconds_string)), c_white, c_white, c_white, c_white, 1)
draw_set_halign(fa_center)
break;

}

draw_set_font(fnGameFont)

