if image_alpha = 0
{
image_alpha = 1
alarm[0] = room_speed * 2.3
alarm[1] = 15
exit;
}
else
{
image_alpha = 0
pos_x = choose(e, mh, w)
pos_y = choose(n, mv, s)
alarm[0] = room_speed * 5
exit;
}

