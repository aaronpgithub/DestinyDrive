/// @param string,x,y,outer_color,inner_color
function draw_text_outline_ext(argument0, argument1, argument2, argument3, argument4) {

	draw_set_color(argument3)
	draw_text(argument1 + 1, argument2 + 1, string_hash_to_newline(argument0))
	draw_text(argument1 - 1, argument2 - 1, string_hash_to_newline(argument0))
	draw_text(argument1, argument2 + 1, string_hash_to_newline(argument0))
	draw_text(argument1 + 1, argument2, string_hash_to_newline(argument0))
	draw_text(argument1, argument2 - 1, string_hash_to_newline(argument0))
	draw_text(argument1 - 1, argument2, string_hash_to_newline(argument0))
	draw_text(argument1 - 1, argument2 + 1, string_hash_to_newline(argument0))
	draw_text(argument1 + 1, argument2 - 1, string_hash_to_newline(argument0))
	draw_set_color(argument4)
	draw_text(argument1, argument2, string_hash_to_newline(argument0))



}
