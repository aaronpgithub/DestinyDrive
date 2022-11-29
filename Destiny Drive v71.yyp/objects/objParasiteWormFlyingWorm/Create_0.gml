/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp_set(1000)

alarm[0] = 90

pos_x = 230
pos_y = ystart

draw_shadow = false

champ = c_white

sprite_index = choose(sprParasiteWormFlyingBuddy, sprParasiteWormFlyingFatty)

if prac_param(0) sprite_index = sprParasiteWormFlyingBuddy
if prac_param(1) sprite_index = sprParasiteWormFlyingFatty