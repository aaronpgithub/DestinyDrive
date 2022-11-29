if depth > 0
{
    if image_alpha < 0.6
    {
    image_alpha += 0.025
    }
}
else
{
    if image_alpha < 0.3
    {
    image_alpha += 0.025
    }
}

draw_set_alpha(image_alpha)
draw_rectangle_colour(-10, -10, 330, 266, c_gray, c_gray, c_gray, c_gray, 0)
draw_set_alpha(1)

