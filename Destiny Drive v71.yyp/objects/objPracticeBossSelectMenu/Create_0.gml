/// @description Insert description here
// You can write your code in this editor

event_inherited()

max_width = 150					//for outline and offset

max_height = room_height
ba_max_height = 51

boss_select_surface = surface_create(max_width, max_height)
boss_attack_surface = surface_create(max_width - 2, ba_max_height)

repeat(6) {
	instance_create_layer(0, 2 + 12 * instance_number(objPracticeBossSelectMenuButton), "Compatibility_Instances_Depth_-1000000000", objPracticeBossSelectMenuButton)
}

repeat(10) {
	instance_create_layer(0, 0, "Compatibility_Instances_Depth_-1000000000", objPracticeAttackSelectMenuButton)
}

instance_create_layer(0, 0, "Compatibility_Instances_Depth_-1000000000", objPracticeScrollBar)

repeat(2) {
	instance_create_layer(0, BOSS_ATTACK_SURFACE_Y + 2 + (instance_number(objPracticeScrollArrow) * (ba_max_height - 4)), "Compatibility_Instances_Depth_-1000000000", objPracticeScrollArrow)
}

repeat(2) {
	instance_create_layer(0, BOSS_ATTACK_SURFACE_Y + ba_max_height + 19, "Compatibility_Instances_Depth_-1000000000", objPracticePhaseArrow)
}

place_attack_buttons()

scroll_amt = 0 //this var lerps to real scroll
real_scroll = 0
total_scroll = 0 //the maximum amount of scrolling

/* create boss buttons

	have 6 buttons
	put buttons at -x if not needed

*/