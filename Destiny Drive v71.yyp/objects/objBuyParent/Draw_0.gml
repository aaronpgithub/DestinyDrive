draw_sprite(sprite_index, image_index, x, y)

if instance_exists(objShop)
{
draw_text_colour(x - (sprite_width / 2), y + ((sprite_height / 2) + 2), "$" + string(price), 1, 1, 1, 1, 1)
}

if x <= room_width / 2 and !instance_exists(objShop) and !instance_exists(objPauseControl)
{
draw_set_halign(fa_center)
draw_text_outline("Press LMB to take, press RMB to skip", room_width / 2, 230)
draw_set_halign(fa_left)
draw_set_colour(c_black)
}


