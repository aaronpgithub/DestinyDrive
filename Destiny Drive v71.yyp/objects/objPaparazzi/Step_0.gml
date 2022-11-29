/// @description Insert description here
// You can write your code in this editor
if !instance_exists(objRadicalMan) {
	x += 5
} else {
	if objRadicalMan.attack_choice = 3 {
		x = lerp(x, position, 0.4)
	} else {
		x += 5
	}
}

if x > room_width instance_destroy()