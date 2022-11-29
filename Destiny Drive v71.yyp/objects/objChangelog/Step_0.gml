if global.menu != "start"
{
image_alpha = 0
}
else
{
image_alpha = 1
}

if open = true
{
circle_rad = lerp(circle_rad, 500, 0.1)
}
else
{
circle_rad = lerp(circle_rad, 0, 0.1)
text_alpha = 0
}

if circle_rad > 400
{
text_alpha += 0.05
}

