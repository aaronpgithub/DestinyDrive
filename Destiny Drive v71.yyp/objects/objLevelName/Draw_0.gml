draw_set_halign(fa_center)

draw_set_font(fnLevelNameFont)

    draw_text_transformed_colour(x, y, string_hash_to_newline(string(global.level_name[0])), 1, 1, 0, c_gray, c_gray, c_gray, c_gray, image_alpha)
    draw_text_transformed_colour(x, y + 15, string_hash_to_newline(string(global.level_name[1])), 0.7, 0.7, 0, c_gray, c_gray, c_gray, c_gray, image_alpha)
    
draw_set_font(fnGameFont)

draw_set_halign(fa_left)

