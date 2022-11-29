/// @description Insert description here
// You can write your code in this editor
len += 2

globalvar planetorbit, planetlen, orbitnum, bullet_orbit_at;
planetlen = len
orbitnum = 0
bullet_orbit_at = 0 //which mult are we at?

with(objBulletParent) {
	if object_index != objPlanetBullet and can_connect = true {
		orbitnum++
	}
}

for(planetorbit = 0; planetorbit < instance_number(objBulletParent); planetorbit++) {
	with(instance_find(objBulletParent, planetorbit)) {
		if object_index != objPlanetBullet and can_connect = true {
			if instance_number(objBulletParent) > 1 {
				if len = 0 len = ( (360 / orbitnum) * bullet_orbit_at) + planetlen
				len = lerp(len, ( (360 / orbitnum) * bullet_orbit_at) + planetlen, 0.2)
			x = objPlanetBullet.x - 3 + lengthdir_x(16, len)
			y = objPlanetBullet.y + lengthdir_y(16, len)
			bullet_orbit_at++
			}
		}
	}
}