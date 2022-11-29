/// @description Insert description here
// You can write your code in this editor
if burst > 0 {
		alarm[2] = 3
		globalvar spidra, fullang;
		fullang = alt
		for(spidra = 0; spidra < 16; spidra++) {
			for(var squa = -1; squa <= 1; squa++) {
				var qudk = (fullang + (spidra * 22.5)) + 90;
				var flower = instance_create(x + lengthdir_x(squa * 6, qudk), y + lengthdir_y(squa * 6, qudk), objEnemyBullet) 
			
				with(flower) {
					damage = 1
					spd = 3 * global.enemy_spd
					angle = fullang + (spidra * 22.5)
				}
			}
		}
	burst -= 1
} else {
	burst = 9
	alarm[2] = 4
	alt += irandom_range(10, 15)
}