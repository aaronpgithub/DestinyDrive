draw_set_alpha(0.4)
draw_circle_colour(x - 1, y - 1, scale, c_lime, c_lime, false)
draw_set_alpha(1)
draw_self()

scale = lerp(scale, 20, 0.2)
ang += 2


