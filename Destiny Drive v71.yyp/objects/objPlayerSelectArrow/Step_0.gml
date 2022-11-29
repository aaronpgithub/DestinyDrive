if global.menu != "char_select"
{
instance_destroy()
}

if x < room_width / 2
{
image_xscale = -1
}

if global.character = 0 and image_xscale = -1
{
image_alpha = 0
}
else if image_xscale = -1
{
image_alpha = 1
}

if global.character = max_character and image_xscale = 1
{
image_alpha = 0
}
else if image_xscale = 1
{
image_alpha = 1
}

