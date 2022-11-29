max_character = instance_number(objPlayerSelect) - 1

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