if y < pos_y
{
image_index = 0
image_angle += 4
y += 5
}
else
{
image_index = 1
x -= 7
    if x < pos_x
    {
    instance_destroy()
    }
}

