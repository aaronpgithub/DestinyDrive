/// @description Insert description here
// You can write your code in this editor
event_inherited()

if damage = 1 alarm[5] = 10

if instance_exists(objSpiritSick) {
	x = objSpiritSick.x
	y = objSpiritSick.y
} else instance_destroy()

if laser_collision_shrink = false {
image_yscale = lerp(image_yscale, 1, 0.3)
} else {
	image_yscale -= 0.1
	
	if image_yscale <= 0 instance_destroy()
}