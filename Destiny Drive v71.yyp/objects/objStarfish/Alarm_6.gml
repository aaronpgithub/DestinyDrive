/// @description Insert description here
// You can write your code in this editor

alarm[6] = 160

var spot_out = irandom(23)

if objPlayer_x < 150 spot_out = irandom(9)

for(var doope = 0; doope <= 23; doope++) {
	for(var lal = 0; lal <= 2; lal++) {
		if doope != spot_out {
			var instsst = instance_create(13.9 * doope, y - 235 + (6 * lal), objStarBullet)
	
			with(instsst) {
				damage = 1
				angle = 90
				spd = -2 * global.enemy_spd
				outside_special = true
			}
		}
	}
}

