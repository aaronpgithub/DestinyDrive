

if object_index != objPlayer2
{
shooting_script(global.dmg + global.alt_dmg, global.shot_speed + global.alt_sho, global.accuracy + global.alt_acc, global.fire_rate + global.alt_fir, true, false)

    if death_avoid = true
    {
    shoot = false
    alarm[0] = -1
    }
}

//with heavy bolt, you've shot by now and are holding mouse down to rechamber
if heavy_bolt = true and heavy_bolt_time != -1 {
    if heavy_bolt_time < heavy_bolt_time_max {
    heavy_bolt_time++
    } else {
    heavy_bolt_charged = true
    }
}


if charge < charge_max and semi_auto_fire_cap <= 0 {
		if weapon = "the_pro" and (heavy_bolt_time < heavy_bolt_time_max or heavy_bolt_charge_static = false) exit;
		
    if scope = false {
    charge += charge_speed * (2 - global.fire_rate)
    } else {
		//holding down mouse to charge a scoped shot, cannot move
        if scope_timer < 30 {
            scope_timer += 1
            scope_x = mouse_x
            scope_y = mouse_y
        } else {
            charge += charge_speed * (2 - global.fire_rate)
        }
    }
} 

// * nighting_mult



