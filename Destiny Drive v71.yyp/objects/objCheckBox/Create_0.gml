if window_get_fullscreen() = false
{
image_index = 0
}
else
{
image_index = 1
}

with(instance_find(objCheckBox, 0))
{
changes = "FULLSCREEN"
}

with(instance_find(objCheckBox, 1))
{
changes = "CURSOR VISIBLE"
}
// fullscreen, no cursor when play...

image_alpha = 0

image_speed = 0

