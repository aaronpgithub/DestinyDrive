if global.menu = "char_select"
{
y = lerp(y, 140, 0.05)
}
else
{
y = lerp(y, 500, 0.05)
}

x = lerp(x, room_width / 2 * ((image_index + 1) - global.character), 0.05)

