/// @description Insert description here
// You can write your code in this editor
event_inherited()

if y > room_height instance_destroy()

var gonego = collision_point(x, y, objRuinBullet, false, true);

if gonego != noone {// and prev_touched != gonego.id {
	with(gonego) {
		if image_alpha > 0.1 image_alpha -= 0.07
	}
}