function draw_text_outline(argument0, argument1, argument2) {
	draw_set_color(c_black)
	draw_text(argument1 + 1, argument2 + 1, string_hash_to_newline(argument0))
	draw_text(argument1 - 1, argument2 - 1, string_hash_to_newline(argument0))
	draw_text(argument1, argument2 + 1, string_hash_to_newline(argument0))
	draw_text(argument1 + 1, argument2, string_hash_to_newline(argument0))
	draw_text(argument1, argument2 - 1, string_hash_to_newline(argument0))
	draw_text(argument1 - 1, argument2, string_hash_to_newline(argument0))
	draw_text(argument1 - 1, argument2 + 1, string_hash_to_newline(argument0))
	draw_text(argument1 + 1, argument2 - 1, string_hash_to_newline(argument0))
	draw_set_color(c_white)
	draw_text(argument1, argument2, string_hash_to_newline(argument0))



}
