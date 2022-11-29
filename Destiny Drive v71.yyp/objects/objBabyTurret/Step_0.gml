image_angle = point_direction(x, y, objPlayer_x, objPlayer_y)

switch(side)
{
    case "left":
    x += 1
        if x > 345 instance_destroy()
    break;
    
    case "right":
    x -= 1
        if x < -25 instance_destroy()
    break;
}

