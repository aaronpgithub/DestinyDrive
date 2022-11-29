event_inherited()

globalvar dang, randag;

randag = random(360)

for(dang = 0; dang <= 12; dang++) {
	var sacbla = instance_create(90, road_y_mid, objEnemyBullet)
	
	with(sacbla) {
		damage = 1
		angle = (360 / 12) * dang + randag
		spd = 0.5 * global.enemy_spd
	}
}