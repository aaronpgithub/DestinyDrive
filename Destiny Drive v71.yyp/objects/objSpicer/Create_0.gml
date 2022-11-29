/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

globalvar myspicerID;
myspicerID = id

repeat(7) {
	var lenme = random_range(10, 80)
	var angleelm = irandom(360)
	var dringao = instance_create(90 + lengthdir_x(lenme, angleelm), road_y_mid + lengthdir_y(lenme, angleelm), objSpicerBullet)

	with(dringao) {
		die_when_gone = myspicerID
	}
}