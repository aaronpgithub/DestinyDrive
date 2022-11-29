/// @description Activation Deactivation
// You can write your code in this editor

switch(global.menu) {
	case "start":
	instance_activate_layer("Start_Menu")
	instance_deactivate_layer("Stats")
	instance_deactivate_layer("Character_Select")
	instance_deactivate_layer("Challenge")
	break;
	case "char_select":
	instance_activate_layer("Character_Select")
	instance_deactivate_layer("Stats")
	instance_deactivate_layer("Start_Menu")
	instance_deactivate_layer("Challenge")
	break;
	case "stats":
	instance_activate_layer("Stats")
	instance_deactivate_layer("Character_Select")
	instance_deactivate_layer("Start_Menu")
	instance_deactivate_layer("Challenge")
	break;
	case "stats_items":
	break;
	case "stats_enemies":
	break;
	case "challenges":
	instance_activate_layer("Challenge")
	instance_deactivate_layer("Stats")
	instance_deactivate_layer("Character_Select")
	instance_deactivate_layer("Start_Menu")
	break;
}