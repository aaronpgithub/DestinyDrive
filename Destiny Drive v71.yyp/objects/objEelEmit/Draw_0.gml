/// @description Insert description here
// You can write your code in this editor
draw_self()

lerpy = lerp(lerpy, road_y_min, 0.3)
lerpy2 = lerp(lerpy2, road_y_max - 8, 0.3)

draw_sprite(sprEelCatch, 0, x, lerpy)
draw_sprite_ext(sprEelCatch, 0, x, lerpy2, 1, -1, 0, c_white, 1)