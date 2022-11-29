if angle_add = true angle += 1
if angle_add = false angle -= 1

if angle > 90 angle_add = false
if angle < -90 angle_add = true

if mouse_check_button(mb_left)
{
    alarm[0] = 60
}

if alarm[0] <= 0 
{
    image_index = 1
}
else
{
    image_index = 0
}

    x = objPlayer.x + lengthdir_x(20, angle)
    y = objPlayer.y + lengthdir_y(20, angle)

