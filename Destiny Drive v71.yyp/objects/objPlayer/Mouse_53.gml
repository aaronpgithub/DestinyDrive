/// @description Level win
if objGameControl.alarm[4] = -1 and global.wave > global.wave_max and global.items_got < 1 and !instance_exists(objItem)
{
	if objGameControl.level_complete_type = "stats" {
		objGameControl.level_complete_type = "weapon" 
	}
	
	level_complete()
} else {
	click_x = mouse_x
	click_y = mouse_y
	
	if weapon = "the_pro" {
		if heavy_bolt_charged = true heavy_bolt_charge_static = true
	}

    if heavy_bolt_time = -1 and heavy_bolt = true {
        heavy_bolt_time = 0
    }

	if charge_weapon = true and burst > 0 burst = -1

    shooting_script(global.dmg + global.alt_dmg, global.shot_speed + global.alt_sho, global.accuracy + global.alt_acc, global.fire_rate + global.alt_fir, false, false)
}

if global.practice = true {
	if instance_exists(objBossParent) {
		with(objBossParent) {
			if alarm[11] > 1 {
				alarm[11] = 1
				x = pos_x
				y = pos_y
			}
		}
	}
}