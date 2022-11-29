/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

globalvar randflakang, flakrotspd, flakstart, flaklayer, chance_to_switch, first_dir;
randflakang = random(360)
flakrotspd = 0
flakstart = 0
flaklayer = 0
chance_to_switch = 0.5
first_dir = 0

repeat(3) {
	//guaranteed to have opposite moving circle
	if first_dir != 0 {
		if random(1) < chance_to_switch {
			flakrotspd = -(first_dir)
		} else {
			flakrotspd = choose(-1, 1) * 0.25
			chance_to_switch = 1
		}
	} else {
	flakrotspd = choose(-1, 1) * 0.25
	first_dir = flakrotspd
	}
	repeat(25) {
	
		var mutfla = instance_create(x, y, objTheMutantFlakRotate)
	
		with(mutfla) {
			spd = 0
			angle = (14.4 * flakstart) + randflakang
			damage = 1
			len = 8 * flaklayer
			rotate_speed = flakrotspd
			outside_special = true
			no_move_destroy = false
		}
	
		flakstart++
	}
	flaklayer++
}