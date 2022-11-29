var back_col;

back_col = make_colour_rgb(32, 32, 32)

if instance_exists(objShop)
{
draw_rectangle_colour(objShop.x - 147, objShop.y - 217, objShop.x + 147, objShop.y - 100, back_col, back_col, back_col, back_col, 0)
}

draw_self()



