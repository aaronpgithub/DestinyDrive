/// @description Insert description here
// You can write your code in this editor
if instance_exists(objParasiteWorm) {
	if objParasiteWorm.alarm[11] <= 0 and objParasiteWorm.x >= objParasiteWorm.pos_x - 2
	{
		//attack choosing
	    if attack_choice = 0 and wait = false
	    {
			//if practice exists, take this variable to find monster spawner attack
			var practice = 0
			
			if instance_exists(objPracticeControl) practice = objPracticeControl.settings_array[1, 5]
			
	    alarm[0] = room_speed * 10
		if objParasiteWorm.transition_amount < 1 attack_check(3, practice)
	    if objParasiteWorm.transition_amount >= 1 attack_check(4, practice)
		
		shootatsame = choose(true, false)
		
		if attack_choice = 1 alarm[0] = room_speed * 15
		if attack_choice = 2 alarm[0] = room_speed * 25
	    }
    
		//Howl
	    if attack_choice = 1
	    {
		create_if_exist(x, y, objParasiteWormHowl)
	    }
    
	    //Worm Buddies
	    if attack_choice = 2
	    {
			if instance_exists(objParasiteWormBuddy) {
				attack_choice = 0
				wait = false
			} else {
				instance_create(350, road_y_min + 30, objParasiteWormBuddy)
				instance_create(350, road_y_max - 30, objParasiteWormBuddy)
				attack_choice = 0
				wait = true
			}
	    }
    
	    //flying worms
	    if attack_choice = 3
	    {
			if instance_exists(objParasiteWormFlyingWorm) {
				attack_choice = 0
				wait = false
			} else {
				instance_create(350, road_y_min - 30, objParasiteWormFlyingWorm)
				attack_choice = 0
				wait = true
			}
	    }
    
	    //Wavy hell
	    if attack_choice = 4
	    {
			if instance_exists(objParasiteWormFlyingWorm) {
				attack_choice = 0
				wait = false
			} else {
				instance_create(350, road_y_min + 30, objParasiteWormBuddy)
				instance_create(350, road_y_max - 30, objParasiteWormBuddy)
				
				with(objParasiteWormBuddy) follower = true
				
				attack_choice = 0
				wait = true
			}
	    }
		
	} else {
		var alarms = 1;
		repeat(10) {
			alarm[alarms] = 50
			alarms++
		
			wait = true
			attack_choice = 0
		}
	}
} else instance_destroy()