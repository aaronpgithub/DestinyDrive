/// @description Insert description here
// You can write your code in this editor
globalvar gride;
gride = id

globalvar othke;

time = 0

angle = random(360)
angle_direct = choose(1, -1)

alarm[1] = 1

for(othke = 0; othke < 10; othke++) {
	var ginte = instance_create(x, y, objPyramidRotateBullet)
	
	with(ginte) {
		length = othke * 4
		light_id = gride
	}
	
	var ginte2 = instance_create(x, y, objPyramidRotateBullet)
	
	with(ginte2) {
		length = -(othke * 4)
		light_id = gride
	}
}