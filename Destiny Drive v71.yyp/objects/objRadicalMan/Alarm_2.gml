/// @description Insert description here
// You can write your code in this editor

alarm[2] = 60

var destroywallnow = irandom(22)

for(var wallo = 0; wallo <= 22; wallo++) {
	
	if wallo > destroywallnow + 2 or wallo < destroywallnow - 2 {
		var kissykissy = instance_create(1, road_y_min + (wallo * 8), objEnemyBullet)
	
			with(kissykissy) {
				damage = 1
				angle = 0
				spd = 1.5 * global.enemy_spd
			}
	}
}