if heavy_bolt_time < heavy_bolt_time_max heavy_bolt_time = -1

if weapon = "the_pro" {
	if heavy_bolt_charge_static = false exit;
}

shooting_script(global.dmg + global.alt_dmg, global.shot_speed + global.alt_sho, global.accuracy + global.alt_acc, global.fire_rate + global.alt_fir, false, true)

charge_reset()

gatling = 1
scope_timer = 0

