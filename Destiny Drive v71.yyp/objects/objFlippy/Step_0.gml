y = road_y_min + (road_y_max - objPlayer.y)

x = (room_width / 2) + ((room_width / 2) - objPlayer.x)

if x > room_width / 2 image_xscale = -1
if x < room_width / 2 image_xscale = 1

if !mouse_check_button(mb_left)
{
alarm[0] = room_speed * 2
}

