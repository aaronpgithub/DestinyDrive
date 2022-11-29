draw_self()

if x <= 260
{
text_amount += 1
draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)

draw_set_colour(c_black)
draw_text_ext(5, 3, string_hash_to_newline(string_copy(saying, 1, text_amount)), 12, 315)
draw_set_colour(c_white)

    if saying != "Thanks, and good luck, guy!"
    {
    draw_set_halign(fa_center)
    draw_sprite(sprPickup, 2, (room_width / 2) - 30, room_height / 2)
    draw_sprite(sprPickup, 0, (room_width / 2) + 30, room_height / 2)
    draw_text_outline(string(price), (room_width / 2) - 30, (room_height / 2) + 20)
    draw_text_outline(string(health_price), (room_width / 2) + 30, (room_height / 2) + 20)
    draw_text_outline("Press LMB to agree, or press RMB to leave.", room_width / 2, 230)
    draw_set_halign(fa_left)
    }
}

