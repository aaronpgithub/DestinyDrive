event_inherited()

draw_self()

if x <= room_width / 2 and x > (room_width / 2) - 5
{
draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)
draw_set_colour(c_black)
draw_text_ext(5, 3, string_hash_to_newline(string(global.shop_string)), 12, 315)
draw_set_colour(c_white)
}

