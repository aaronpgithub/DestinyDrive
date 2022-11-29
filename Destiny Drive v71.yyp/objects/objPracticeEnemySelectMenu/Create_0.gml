/// @description Insert description here
// You can write your code in this editor

event_inherited()

enemy_list = ds_list_create()

ds_list_add(enemy_list, objJunker, objMediCar, objTurretCar, objDoubleShot, objBanditCar, objTriple, objBird, objBanditGatling, objTubbsy)

lerp_menu = 0					//the width of the black menu square.
l_menu_alpha = 0				//The alpha of this specific menu
real_width = 0					//The lerp width
max_width = 72					//The max width possible, from string_width

max_height = 400

repeat(20) {
	instance_create_layer(0, 1 + 32 * floor((instance_number(objPracticeEnemyGrid)) / 2 ), "Compatibility_Instances_Depth_-1000000000", objPracticeEnemyGrid)
}

instance_create_layer(0, 228, "Compatibility_Instances_Depth_-1000000000", objPracticeEnemySelectBackButton)

enemy_select_surface = surface_create(max_width, max_height)
enemy_grid_surface = surface_create(max_width - 2, 129)

scroll_amt = 0 //this var lerps to real scroll
real_scroll = 0
total_scroll = 0 //the maximum amount of scrolling