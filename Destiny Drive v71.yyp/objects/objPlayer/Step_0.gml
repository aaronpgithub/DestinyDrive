if global.debg = true or global.practice = true
{
	var v_player_invincible = true;
	
	if instance_exists(objPracticeControl) {
		if objPracticeControl.player_invincible = false v_player_invincible = false
	}
	
if v_player_invincible = true { if max_hp > 0 global.hp = max_hp }
if global.debg = true global.dmg = 100000
//global.wave_max = 2
}

var usitm = -1;
if global.use_itm[0] = 40 usitm = 0
if global.use_itm[3] = 40 usitm = 1

if usitm != -1 {
	if global.use_itm[usitm + 1] < 1 global.use_itm[usitm + 1] += 0.005
}

if powershield_timer > powershield_max_time powershield_timer = powershield_max_time
if powershield_timer > 0 {
	powershield_timer--
	
	if ds_map_exists(global.item_map, "glowing_gemstone") or ds_map_exists(global.item_map, "baby_gemstone") {
		var scale = 0;
		
		//want baby gemstone to cancel out glowing gemstone
		if ds_map_exists(global.item_map, "glowing_gemstone") scale = 0.8
		if ds_map_exists(global.item_map, "baby_gemstone") scale = -0.5
		
		image_xscale = lerp(image_xscale, player_scale + scale, 0.4)
		image_yscale = image_xscale
	}
}

if powershield_timer <= 0 {
	if ds_map_exists(global.item_map, "participation_award") {
		if ds_map_find_value(global.item_map, "participation_award") = 1 {
			global.hp += powershield_max_time / room_speed
			ds_map_replace(global.item_map, "participation_award", 0)
		}
	}
}

if global.chisel_hp >= global.hp global.hp = 0

//use timer stuff
if alarm[2] > alarm_2_max alarm[2] = alarm_2_max
if alarm[9] > alarm_9_max alarm[9] = alarm_9_max
//

if instance_exists(objEnemyParent)
{
    if ds_map_exists(global.item_map, "hit_list")
    {
        if !instance_exists( instance_find( objEnemyParent, ds_map_find_value(global.item_map, "hit_list") ) )
        {
        ds_map_replace(global.item_map, "hit_list", irandom( instance_number(objEnemyParent) - 1 ) )
        }
    }
}
 
    if global.hp > 0 and object_index != objPlayer2 and teleport = false and objGameControl.level_complete_type != "weapon"
    {
        if !gamepad_is_connected(0)
        {
        mouse_controls()
        }
        else
        {
            if !instance_exists(objPlayer2)
            {
            gamepad_control()
            }
            else
            {
            mouse_controls()
            }
        }
    }

#region ///Character specific code

//Dastardly Devil
if soul_count >= 55 and global.character = 7
{
soul_count = 0
instance_create(room_width / 2, -30, objSoulStat)
}

//Bone Boy
if sprite_index = sprPlayerBoneBoy
{
}

//DynaMike
//Allow Dynamike to shoot normally when he's not avoiding death
if alarm[0] <= -1 and death_avoid = false and global.character = 8
{
shoot = true
}

    //spirit of despair
    if sprite_index = sprPlayerSpiritOfDespair and max_hp > spirit_max_hp
    {
    max_hp = spirit_max_hp
    }
#endregion

#region ///Stat clamps

if global.shot_speed = 0
{
global.shot_speed = 0.05
}

//so you can still get luck based stuff
if global.luck <= 0
{
global.luck = 0.01
}

    if global.accuracy < 0
    {
    global.accuracy = 0
    }
    
    if global.fire_rate <= 0
    {
    global.fire_rate = 0.1
    }
    
    if global.hp > max_hp
    {
    if max_hp > 0 global.hp = max_hp
    }
   #endregion

#region///Health
    if global.hp <= 0
    {
        if death_avoid = false
        {
        player_death()
        }
		
		if y < road_y_min y += 5
    }
    
    if ds_map_exists(global.item_map, "book_math")
    {
        if global.hp < ceil(max_hp / 2)
        {
            if ds_map_find_value(global.item_map, "book_math") != 2
            {
            if ds_map_find_value(global.item_map, "book_math") = 3 global.alt_dmg -= 0.2
            global.alt_fir -= 0.2
            ds_map_replace(global.item_map, "book_math", 2)
            }
        }
        else
        {
            if ds_map_find_value(global.item_map, "book_math") != 3
            {
            if ds_map_find_value(global.item_map, "book_math") = 2 global.alt_fir += 0.2
            global.alt_dmg += 0.2
            ds_map_replace(global.item_map, "book_math", 3)
            }
        }
    }
#endregion

#region ///Spiral Gun

    //spiral use item
    if global.use_itm[0] = 9 and spiral_shoot = true
    {
    globalvar ntmul;
    
    ntmul = 1
    
    if ds_map_exists(global.item_map, "nightinggale_lightning")
    {
    ntmul = 2
    }
    
    globalvar p;
        for(p = 0; p < 5 * ntmul; p++)
        {
            inst = instance_create(x, y, objBullet)
                with(inst)
                {
                damage = 3 * global.dmg
                spd = 7 * global.shot_speed
                angle = objPlayer.angle_offset + (p * 72)
                if ntmul = 2 angle = objPlayer.angle_offset + (p * 36)
                no_flash = true
                }
        }
    angle_offset += 5
    }
	#endregion

#region ///Weapon Specifics

if semi_auto_fire_cap > 0 semi_auto_fire_cap--

if charge >= charge_max and charge_has_flash = false {
charge_flash = 3
charge_has_flash = true
}

if combo != 0 and semi_auto_fire_cap <= 0 {
    if combo_timer > 0 {
    combo_timer--
    } else {
    combo = 0
    combo_timer = 65
    }
}

if antsy = true and antsy_charge < antsy_charge_max {
antsy_charge += 0.01
}

if antsy_charge >= antsy_charge_max {
    if !instance_exists(objSweat) {
        instance_create(x, y, objSweat)
    }
}

if tempo = true {
    if tempo_timer <= 0 {
    tempo_timer = tempo_timer_max
    tempo_flash = 9
    } else {
    tempo_timer--
    }
}

if weapon = "rotate" and alarm[0] = -1 {
    t += 8
    ang_offset = sin(degtorad(t)) * 40
}

if powerhouse_timer <= 0 {
    powerhouse_charge += 1
    powerhouse_timer = room_speed * 15
} else powerhouse_timer--

	if infinite_counter <= 0 {
		infinite_counter = 3
		bullet_shoot(6, 5, 2, global.dmg, global.shot_speed, global.acc, 0, 0, 0, "infinite")
	}

#endregion
