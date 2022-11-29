draw_self();
draw_set_font(fnGameFont)
draw_set_halign(fa_left)
draw_text_colour(x + 1, y, string_hash_to_newline(string(global.player_name)), c_white, c_white, c_white, c_white, 1)
draw_text_transformed_colour(x + 1, y + 11, string_hash_to_newline(string(global.player_desc)), 0.4, 0.4, 0, c_white, c_white, c_white, c_white, 1)

/*
//damage
draw_text_transformed_colour(room_width / 2 - 130, y + 2, "DAMAGE", 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
draw_sprite(sprStatBar, global.player_dmg - 1, room_width / 2 - 130, y + 12)

//Accuracy
draw_text_transformed_colour(room_width / 2 - 130, y + 16, "ACCURACY", 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
draw_sprite(sprStatBar, global.player_acc - 1, room_width / 2 - 130, y + 26)

//Shot Speed
draw_text_transformed_colour(room_width / 2 - 130, y + 30, "SHOT SPEED", 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
draw_sprite(sprStatBar, global.player_spd - 1, room_width / 2 - 130, y + 40)

//Fire Rate
draw_text_transformed_colour(room_width / 2 + 130, y + 16, "FIRE RATE", 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
draw_sprite(sprStatBar, global.player_fir - 1, room_width / 2 + 130, y + 26)

//Luck
draw_text_transformed_colour(room_width / 2 + 130, y + 30, "LUCK", 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
draw_sprite(sprStatBar, global.player_lck - 1, room_width / 2 + 130, y + 40)
*/



draw_sprite(sprCharacterAttributes, global.character * 2, sprite_width - 135, y + 25)
draw_text_ext_transformed_colour(sprite_width - 215, y + 2, string_hash_to_newline(string(global.character_trait_name1)), 8, 1000, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1)
draw_text_ext_transformed_colour(sprite_width - 215, y + 10, string_hash_to_newline(string(global.character_trait_desc1)), 12, 110, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1)

draw_sprite(sprCharacterAttributes, (global.character * 2) + 1, sprite_width - 25, y + 25)
draw_text_ext_transformed_colour(sprite_width - 110, y + 2, string_hash_to_newline(string(global.character_trait_name2)), 8, 1000, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1)
draw_text_ext_transformed_colour(sprite_width - 110, y + 10, string_hash_to_newline(string(global.character_trait_desc2)), 12, 110, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1)

//HP
draw_text_transformed_colour(x + 1, y + 16, string_hash_to_newline("HP: " + string(global.player_hp)), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)


//Weapon
draw_text_transformed_colour(x + 1, y + 22, string_hash_to_newline("WEAPON"), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
draw_sprite(sprGun, global.player_wep, x + 17, y + 39)


//Item
draw_set_halign(fa_center)
if global.player_item1 > 0
{
    if global.character < 9 and global.character > 1
    {
        if global.player_item2 <= 0
        {
        draw_text_transformed_colour(x + 70, y + 22, string_hash_to_newline("ITEM"), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
        draw_sprite_ext(sprUseItem, global.player_item1, x + 70, y + 41, 0.6, 0.6, 0, c_white, 1)
        }
        else
        {
        draw_text_transformed_colour(x + 70, y + 22, string_hash_to_newline("ITEM"), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
        draw_sprite_ext(sprItem, global.player_item1, x + 60, y + 41, 0.6, 0.6, 0, c_white, 1)
        draw_sprite_ext(sprItem, global.player_item2, x + 80, y + 41, 0.6, 0.6, 0, c_white, 1)
        }
    }
    else
    {
        draw_text_transformed_colour(x + 70, y + 22, string_hash_to_newline("ITEM"), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
        draw_sprite_ext(sprItem, global.player_item1, x + 70, y + 41, 0.6, 0.6, 0, c_white, 1)
    }
}
draw_set_halign(fa_left)

/* */
/*  */
