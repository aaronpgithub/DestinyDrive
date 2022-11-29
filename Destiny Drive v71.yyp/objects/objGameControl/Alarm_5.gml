/// @description ENTIRE WAVE CRAP CODE



alarm[5] = 10

if global.practice exit; //Don't do this code if it's practice mode!

if global.level = "final" exit;

//GROSS WAVE
/*
JUST IN CASE
if !instance_exists(objEnemyParent) and !instance_exists(objItem) and !instance_exists(objShopParent) and !instance_exists(objLevelName) and !instance_exists(objTheGod)
and global.wave != global.wave_max - 1 and global.wave <= global.wave_max 
and global.hp > 0 and alarm[11] < 0 and global.wave != beast_wave and global.items_got <= 0 and level_complete_type = ""

	IF:
		No enemies exist
		No items exist
		No shop exists
		Intro to level isn't playing
		The True Final boss doesn't exist
		The wave is not equal to the wave BEFORE boss wave
		The wave is less than or equal to max wave (if equal to max wave, this is what makes the level complete)
		The player isn't dead
		No special wave is happening (junk, volcano bridge)
		Special shop doesn't exist
		There aren't multiple amounts of item pedestals (Essence of pity, etc.)
		The level isn't complete
		
*/

if !instance_exists(objEnemyParent) and !instance_exists(objItem) and !instance_exists(objShopParent) and !instance_exists(objLevelName) and !instance_exists(objTheGod)
and global.wave != global.wave_max - 1 and global.wave <= global.wave_max and global.hp > 0 
and alarm[11] < 0 and global.items_got <= 0 and level_complete_type = ""
{
    global.no_more_items = false

	wave_item_on_reset()

	if !ds_map_exists(global.item_map, "redo") {
    
    //Adding wave
    wave_add()
    //
	
	//wave items like hard hat
    wave_item_on_complete()
    //

    //Randomizing weapon when playing with Transfrom artifact
    if global.artifact[5, 0] = 1
    {
    objPlayer.weapon = irandom(sprite_get_number(sprGun) - 1)
    objPlayer.shoot = true
    objPlayer.burst = -1
    }
    //

    //use item charging
	
	    if global.use_itm[0] > -1
	    {
			var charge = true;
			
				if global.use_itm[0] = 40 charge = false
			
	        if global.use_itm[1] < global.use_itm[2] and charge = true
	        {
	        global.use_itm[1] += 1
	        if ds_map_exists(global.item_map, "jumper_cable") and random(1) < 0.3 * global.luck global.use_itm[4] += 1
	        }
	    }
	    //
    
	    //use item charging ALIEN
	    if global.use_itm[3] > -1
	    {
			var charge = true;
			
				if global.use_itm[3] = 40 charge = false and charge = true
			
	        if global.use_itm[4] < global.use_itm[5]
	        {
	        global.use_itm[4] += 1
	        if ds_map_exists(global.item_map, "jumper_cable") and random(1) < 0.3 * global.luck global.use_itm[4] += 1
	        }
	    }
    //
    
	//reseting the flawless variable
    objPlayer.flawless = true
    //
	}
    
    special_wave_event()
    
    //kill one enemy if you have the weakness scroll
    if ds_map_exists(global.scroll, "weakness")
    {
        if instance_number(objEnemyParent) > 1 //making sure there is more than one enemy
        {
            with(instance_find(objEnemyParent, 0))
            {
            instance_destroy()
            }
        }
    }
    //
    
    //miniboss wave
    if global.wave = mini_wave and global.hp > 0 and !instance_exists(objShop)
    {
    instance_create(272, 160, objMinibossSpawn)
        
        //pacifist challenge
        if global.challenge = 7
        {
        alarm[9] = room_speed * 45
        }
    }
    //

    //Pacifist timer for normal waves
    if global.challenge = 7 and global.wave != mini_wave
    {
    alarm[9] = (room_speed * 2) * instance_number(objEnemyParent)
    }
    //
	
	//Pickups/////////////////////////////////////////
    pickup_script()
    ////////////////////////////////////////////////
	
	if ds_map_exists(global.item_map, "redo") ds_map_delete(global.item_map, "redo")
}
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////
//////////////////////////////////////


