/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

prac_enemy_id = instance_number(objPracticeEnemyGrid) - 1

my_sprite = -1

if prac_enemy_id < ds_list_size(objPracticeEnemySelectMenu.enemy_list) {
	sprite_index = sprPracticeEnemyGrid
	my_sprite = object_get_sprite(objPracticeEnemySelectMenu.enemy_list[| prac_enemy_id])
} else sprite_index = -1

y = 2 + 32 * floor((instance_number(objPracticeEnemyGrid) - 1) / 2 )

praxscale = 1
prayscale = 1

sprite_off_x = 0
sprite_off_y = 0