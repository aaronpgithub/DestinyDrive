draw_set_halign(fa_center)
switch(stat)
{
case "damage":
draw_text_outline_ext(string_upper(string(stat)) + " UP!", x, y, c_black, c_red)
break;

case "fire rate":
draw_text_outline_ext(string_upper(string(stat)) + " UP!", x, y, c_black, c_orange)
break;

case "accuracy":
draw_text_outline_ext(string_upper(string(stat)) + " UP!", x, y, c_black, c_teal)
break;

case "shot speed":
draw_text_outline_ext(string_upper(string(stat)) + " UP!", x, y, c_black, c_yellow)
break;

case "luck":
draw_text_outline_ext(string_upper(string(stat)) + " UP!", x, y, c_black, c_lime)
break;
}
draw_set_halign(fa_left)

