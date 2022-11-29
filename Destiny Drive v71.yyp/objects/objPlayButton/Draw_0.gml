draw_self()

t += 2
t = t mod 360

hue += 0.5

if hue > 255
{
hue = 0
}

draw_sprite_ext(sprTitle, 0, room_width / 2, 50, 1, 1, 0, make_colour_hsv(hue, 255, 160), 1)

draw_set_halign(fa_center)
draw_set_font(fnSplashFont)
draw_text_colour(room_width / 2, 100 + (5 * sin(degtorad(t))), string_hash_to_newline(string(objMenuControl.splash)), c_white, c_white, c_silver, c_silver, 1)
draw_set_font(fnGameFont)
draw_set_halign(fa_left)

