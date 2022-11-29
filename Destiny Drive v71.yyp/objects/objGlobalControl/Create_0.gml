sprite_index = noone //removing debug sprite

global.debg = false //debug mode
global.practice = false

angle_checker = 0
global.vol_percent = 1
alarm[0] = room_speed * 1
coop = false
itm = 0

tt = 0

global.time = delta_time / 1000000;

global.frame_time = 0 //for nice flash stuff

global.decal_spd = 1 //the decoration speed multiplier

global.effects = false

    seconds = 0
    minutes = 0
    hours = 0
    days = 0
    
    second_string = ""
    minutes_string = ""
    hours_string = ""
    days_string = ""
    
    global.challenge = 0
    
    global.shader_flash = shader_get_uniform(flash_shader, "v_vFlashColour")
    
    global.character_trait = ds_list_create()
	
	//insert the number of the level that has been completed.
	completed_levels = ds_list_create()
	//for alpha 1.
	ds_list_add(completed_levels, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)
    
    corrupt = false
    //a little fun, keep at false for normal game
    
    true_surface_scale = false

