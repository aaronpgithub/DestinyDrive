/// @description Insert description here
// You can write your code in this editor
x = lerp(x, xpos_news, 0.1)
y = lerp(y, ypos_news, 0.1)

if point_distance(x, y, xpos_news, ypos_news) > 2 {
	alarm[0] = 140
}

if leave = true {
	spd_news += 0.1
	motion_set(45 + (spd_news * 6), spd_news)
}

if y < -8 instance_destroy()

if !instance_exists(news_id) leave = true