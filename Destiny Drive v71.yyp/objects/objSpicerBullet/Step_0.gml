/// @description Insert description here
// You can write your code in this editor
event_inherited()

if alarm[0] <= 0 {
	if image_xscale < 1 {
		image_xscale += 0.05
		image_yscale = image_xscale
		image_angle += 2
		
		damage = 1
	}
}

if !instance_exists(die_when_gone) {
	image_xscale -= 0.1
	image_yscale = image_xscale
	if image_xscale <= 0 instance_destroy()
}