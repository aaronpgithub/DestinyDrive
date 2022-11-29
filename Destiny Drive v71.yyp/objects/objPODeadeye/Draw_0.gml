event_inherited()

var thisvar = point_direction(mid_x, mid_y, objPlayer_x, objPlayer_y)

draw_line_colour(mid_x, mid_y, mid_x + lengthdir_x(400, thisvar + dead_acc), mid_y + lengthdir_y(400, thisvar + dead_acc), c_blue, c_blue)
draw_line_colour(mid_x, mid_y, mid_x + lengthdir_x(400, thisvar - dead_acc), mid_y + lengthdir_y(400, thisvar - dead_acc), c_blue, c_blue)

with(objPlayer) {
	draw_text(x, y, string(x - xprevious))
}