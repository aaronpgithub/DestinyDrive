len -= 2

x = (room_width / 2) + lengthdir_x(len, image_angle)
y = (room_height / 2) + lengthdir_y(len, image_angle)

if len <= 20
{
image_xscale -= 0.1
image_yscale = image_xscale
image_alpha -= 0.08

    if image_xscale <= 0
    {
    instance_destroy()
    }
}

if wavy = true
{
    wavt += 3
    
    x = (room_width / 2) + lengthdir_x(len, image_angle + (5 * sin(degtorad(t))) )
    y = (room_height / 2) + lengthdir_y(len, image_angle + (5 * sin(degtorad(t))) )
}

