/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_sprite(sprBandit, 0, x - 21, y - 13)
draw_sprite_ext(sprBandit, 1, x - 21, y - 13, 1, 1, 0, make_color_hsv(bandit_1_hue, 125, 255), 1)

draw_sprite(sprBandit, 0, x - 17, y - 8)
draw_sprite_ext(sprBandit, 1, x - 17, y - 8, 1, 1, 0, make_color_hsv(bandit_2_hue, 125, 255), 1)

draw_sprite(sprite_index, 1, x, y)