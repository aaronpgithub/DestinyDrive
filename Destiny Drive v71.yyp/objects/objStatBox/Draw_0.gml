if !instance_exists(objPauseControl) exit;

if image_alpha > 0
{
draw_set_halign(fa_left)

    if stat_type = "max_hp" draw_text_outline("HP - " + string(objPauseControl.max_player_hp), x, y)

    switch(stat_type)
    {
    case "max_hp":
    draw_text_outline("HP - " + string(objPauseControl.max_player_hp), x, y)
    break;
    case "damage":
    draw_text_outline("DMG - " + string(global.dmg + global.alt_dmg) + "x", x, y)
    break;
    case "fire_rate":
    draw_text_outline("FIR - " + string(global.fire_rate + global.alt_fir) + "x", x, y)
    break;
    case "accuracy":
    draw_text_outline("ACC - " + string(global.accuracy + global.alt_acc) + "x", x, y)
    break;
    case "shot_speed":
    draw_text_outline("SPD - " + string(global.shot_speed + global.alt_sho) + "x", x, y)
    break;
    case "luck":
    draw_text_outline("LCK - " + string(global.luck + global.alt_luc) + "x", x, y)
    break;
    }
draw_set_halign(fa_center)
}

if hover = true and image_alpha > 0
{
draw_set_halign(fa_left)
        draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)
        switch(stat_type)
        {
        case "max_hp":
        draw_text_ext_colour(5, 3, string_hash_to_newline("Your max health. When you run out of HP, you die!"), 12, 315, c_black, c_black, c_black, c_black, 1)
        break;
        case "damage":
        draw_text_ext_colour(5, 3, string_hash_to_newline("Your damage multiplier. Most of your items and weapons' damage is multiplied by this number."), 12, 315, c_black, c_black, c_black, c_black, 1)
        break;
        case "fire_rate":
        draw_text_ext_colour(5, 3, string_hash_to_newline("Your fire rate multiplier. The lower it is, the faster you shoot."), 12, 315, c_black, c_black, c_black, c_black, 1)
        break;
        case "accuracy":
        draw_text_ext_colour(5, 3, string_hash_to_newline("Your accuracy multiplier. Most of your bullets are affected by this. The lower it is, the more accurate you are."), 12, 315, c_black, c_black, c_black, c_black, 1)
        break;
        case "shot_speed":
        draw_text_ext_colour(5, 3, string_hash_to_newline("Your shot speed multiplier. Most of your bullets' speed are affected by this multiplier."), 12, 315, c_black, c_black, c_black, c_black, 1)
        break;
        case "luck":
        draw_text_ext_colour(5, 3, string_hash_to_newline("Your luck multipler. Most chance based things are affected by this multiplier. The higher, the better."), 12, 315, c_black, c_black, c_black, c_black, 1)
        break;
        }
        
draw_set_halign(fa_center)
}

