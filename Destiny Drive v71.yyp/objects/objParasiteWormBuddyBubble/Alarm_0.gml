/// @description Insert description here
// You can write your code in this editor
alarm[0] = 50

globalvar addhundo;
addhundo = angle - 90

repeat(2) {
	var hunde = instance_create(x, y, objEnemyBullet)
	
	with(hunde) {
		spd = 1.5
		angle = addhundo
		damage = 1
	}
	
	addhundo += 180
}