/// @description Insert description here
// You can write your code in this editor
event_inherited()

if circle_alpha > 0 {
	var dandle = 72;

	if scram = true {
		circle_length += 5
		circle_alpha -= 0.1
	}

	circle_ghost += circle_speed

	draw_sprite_ext(sprSpiritAngry, 0, x + lengthdir_x(circle_length, circle_ghost), y + lengthdir_y(circle_length, circle_ghost), 1, 1, 0, c_white, circle_alpha)
	draw_sprite_ext(sprSpiritHappy, 0, x + lengthdir_x(circle_length, circle_ghost + (dandle)), y + lengthdir_y(circle_length, circle_ghost + (dandle)), 1, 1, 0, c_white, circle_alpha)
	draw_sprite_ext(sprSpiritSad, 0, x + lengthdir_x(circle_length, circle_ghost + (dandle * 2)), y + lengthdir_y(circle_length, circle_ghost + (dandle * 2)), 1, 1, 0, c_white, circle_alpha)
	draw_sprite_ext(sprSpiritSick, 0, x + lengthdir_x(circle_length, circle_ghost + (dandle * 3)), y + lengthdir_y(circle_length, circle_ghost + (dandle * 3)), 1, 1, 0, c_white, circle_alpha)
	draw_sprite_ext(sprSpiritConfused, 0, x + lengthdir_x(circle_length, circle_ghost + (dandle * 4)), y + lengthdir_y(circle_length, circle_ghost + (dandle * 4)), 1, 1, 0, c_white, circle_alpha)
} else {
	if created_spirits = false {
		instance_create(340, random_range(road_y_min + 20, road_y_max - 20), objSpiritAngry)
		instance_create(-20, road_y_min, objSpiritSad)
		instance_create(340, random_range(road_y_min + 20, road_y_max - 20), objSpiritHappy)
		instance_create(340, random_range(road_y_min + 20, road_y_max - 20), objSpiritConfused)
		instance_create(300, 280, objSpiritSick)
		created_spirits = true
	}
}