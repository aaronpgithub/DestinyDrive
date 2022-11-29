/// @description Insert description here
// You can write your code in this editor

sprite_index = noone //removing debug sprite

global.p_lerp_spd = 0.5
player_invincible = false

in_menu = true

practice_pause_surface = surface_create(room_width, room_height)
practice_menu_surface = surface_create(room_width, room_height)

lerp_menu = 0					//the width of the black menu square.
menu_x = 0

boss_attacks = ds_list_create()
boss_phases = 1
max_boss_button_offset = 0

delete_attack = 0
special_boss_delete = ""

var place1 = 0, place2 = 0;
repeat(3) {
	place2 = 0
	repeat(3) {
		enemy_place[place1, place2] = -1
		place2++
	}
	place1++
}

var bs = 0;
repeat(10) {
boss_select[bs, 0] = 0		// Boss name
boss_select[bs, 1] = 0		// Boss sprite
boss_select[bs, 2] = 0		// Boss object
bs++
}

menu_alpha = 0

settings_array[0, 0] = "Levels"
settings_array[0, 1] = "wasteland"				//the level

settings_array[1, 0] = "Bosses"
settings_array[1, 1] = 0					//the boss to fight
settings_array[1, 2] = 0					//the boss phase
settings_array[1, 3] = 0					//the boss attack
settings_array[1, 4] = 0					//the boss special parameter
settings_array[1, 5] = 0					//the boss 2nd special parameter (parasite worm monster spawner)

settings_array[2, 0] = "Enemies"
settings_array[2, 1] = -1					//the selected enemy

settings_array[3, 0] = "Stats"

settings_array[4, 0] = "Artifacts"

settings_array[5, 0] = "Challenges"

settings_array[6, 0] = "Invincibility"

settings_array[7, 0] = "Play Level"

	//Creating Buttons
	globalvar practice_text_yoff, bt;
	practice_text_yoff = 0
	
	for(bt = 0; bt < array_height_2d(settings_array); bt++) {
		globalvar button_width;
		button_width = string_width(settings_array[bt, 0])
		
		var button_var = instance_create_layer(menu_x, 3 + practice_text_yoff, "Compatibility_Instances_Depth_-1000000000", objPracticeMenuButton)
	
		with(button_var) {
			image_xscale = button_width + 3 //plus two because of outline
			menu_button_type = string_lower(objPracticeControl.settings_array[bt, 0])
		}
		
		practice_text_yoff += 12
	}
	
	instance_create_layer(0, 0, "Compatibility_Instances_Depth_15", objPracticePauseBack)

/*
level
enemies or boss
	-select boss (or miniboss)
		-Select phase
		-Select attack
	
	-place enemies
		-NEW MENU
		-shows enemies from the current level
		-Click on enemy and put it on grid
		-Click random generation to randomly generate a wave
	
Player Variables
	-NEW MENU
		-hp
		-damage
		-fire rate
		-accuracy
		-shot speed
		-luck
		-Select Weapon
			-NEW MENU
		-Select Items
			-NEW MENU

Artifact Chooser
Challenge Chooser

	
*/