/// @description Insert description here
// You can write your code in this editor
alarm[3] = 30

globalvar trepid;

for(trepid = 0; trepid < 10; trepid++) {
	var grpo = instance_create(x, y, objPyramidBullet)
	
	with(grpo) {
		damage = 1
		angle = trepid * 36
		spd = 1.5 * global.enemy_spd
	}
}