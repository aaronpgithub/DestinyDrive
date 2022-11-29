if powerhouse_charge > 8 powerhouse_charge = 8

//or !ds_map_exists(global.item_map, "glowing_gemstone") This is for resetting size after baby or glowing gem
if powershield_timer <= 0 {
	image_xscale = lerp(image_xscale, player_scale, 0.4)
	image_yscale = image_xscale
}

if ds_map_exists(global.item_map, "ess_anxi") {
	
	if mouse_check_button_pressed(mb_left)
		if global.hp > 2 global.hp = 2
	
	if mouse_check_button_released(mb_left) and global.hp > 0
		global.hp = ds_map_find_value(global.item_map, "ess_anxi")
}

if ds_map_exists(global.item_map, "cursed_armor") {
	if global.hp <= 5 and global.hp > 0 {
		if global.shields[0] < 1 {
			ds_map_replace(global.item_map, "cursed_armor", ds_map_find_value(global.item_map, "cursed_armor") - 1)
		
			if ds_map_find_value(global.item_map, "cursed_armor") <= 0 {
				global.shields[0] += 1
				ds_map_replace(global.item_map, "cursed_armor", 240)
			}
		}
	}
}

	global.alt_dmg += test_use_item_gem(43, "garnet", 0.2)
	global.alt_luc += test_use_item_gem(44, "jade", 0.8)
	global.alt_sho += test_use_item_gem(45, "topaz", 0.6)
	global.alt_acc += test_use_item_gem(46, "aquamarine", -0.4)
	global.alt_fir += test_use_item_gem(47, "amber", -0.2)

global.real_luck = 0
global.real_luck = global.luck * (fire_rate_chance_mod / 50)

health_item()

if ds_map_exists(global.item_map, "glamour_muscle")
{
    if mouse_check_button(mb_left)
        if global.alt_acc < 6 global.alt_acc += 0.1
    else
        if global.alt_acc > 0 global.alt_acc -= 0.5
}


if ds_map_exists(global.item_map, "thunderfinger")
{
    if global.use_itm[0] >= 0
    {
        global.alt_fir = -(global.use_itm[1] / global.use_itm[2]) / 1.5

        do
        {
        global.alt_fir += 0.05
        }
        until (global.fire_rate + global.alt_fir > 0)
    }
}

if global.level = "final" and !collision_point(x, y, objRoad, true, true)
{
    if instance_exists(objCutscene)
    {
        if objCutscene.reverse = false //reversing the fade away
        {
            image_angle -= 5
            if yfl_frames > 0 yfl_frames -= 1
            
            if yfl_frames <= 0 yfl_spd += 0.1
            y_fall += yfl_spd
            
                if (road_y_min + 85) + y_fall <= 350 {
                y = (road_y_min + 85) + y_fall
                x += 1 - (yfl_spd / 10)
                }
                else {
                    if y < 350 y = 350
                    y += 2
                }
            
            if y >= 410 {
                repeat(2) instance_create(0, 256 - (2 * instance_number(objFadeAway)), objFadeAway)
            }
        }
        else
        {
            if !instance_exists(objTheFinalBoss)
            {
            image_angle -= 5
            x = 50
            y = road_y_min + 85
            }
            else
            {
            do image_angle -= 360 until (image_angle <= 360)

            image_angle = lerp(image_angle, 0, 0.1)
            }
        }
    }
}

