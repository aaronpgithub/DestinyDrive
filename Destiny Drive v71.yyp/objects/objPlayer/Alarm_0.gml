/// @description shoot can happen again

shoot = true

var is_a_charge_weapon = charge_weapon;

if burst >= 0 {
shooting_script(global.dmg + global.alt_dmg, global.shot_speed + global.alt_sho, global.accuracy + global.alt_acc, global.fire_rate + global.alt_fir, false, is_a_charge_weapon)
}


