if point_distance(x, y, objPlayer_x, objPlayer_y) <= 200 {
    draw_set_alpha(line_alpha * image_alpha)
    draw_line_width_colour(x, y, x + lengthdir_x(600, angle), y + lengthdir_y(600, angle), 3, c_black, c_black)
    draw_line_width_colour(x, y, x + lengthdir_x(600, angle), y + lengthdir_y(600, angle), 1, c_yellow, c_yellow)
    draw_set_alpha(1)
    
    line_alpha = lerp(line_alpha, 1 - (point_distance(x, y, objPlayer_x, objPlayer_y) / 200), 0.5)
}

draw_self()

