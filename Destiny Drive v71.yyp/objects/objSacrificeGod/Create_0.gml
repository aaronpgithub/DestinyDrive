/// @description Insert description here
// You can write your code in this editor

event_inherited()

alarm[1] = 30

burst_sacrifice = -10
burst_wall = irandom(3)

sacri_ang = 0

globalvar dointhis, doinit, dirlen;
dirlen = 120

for(dointhis = 0; dointhis < 4; dointhis++) {
	for(doinit = 0; doinit <= 20; doinit++) {
		var sacrificebul = instance_create(90 + lengthdir_x(1000, 45 + (90 * dointhis) + (4 * doinit)), (road_y_mid - 2) + lengthdir_y(1000, 45 + (90 * dointhis) + (4 * doinit)), objSacrificeSquareBullet)
		
		with(sacrificebul) {
			var sxsx = 90 + lengthdir_x(dirlen, 45 + (90 * dointhis));
			var sysy = (road_y_mid - 2) + lengthdir_y(dirlen, 45 + (90 * dointhis));
			var sxsx2 = 90 + lengthdir_x(dirlen, 45 + (90 * (dointhis + 1)));
			var sysy2 = (road_y_mid - 2) + lengthdir_y(dirlen, 45 + (90 * (dointhis + 1)));
			
			square_x = sxsx + lengthdir_x(doinit * 8, point_direction(sxsx, sysy, sxsx2, sysy2))
			square_y = sysy + lengthdir_y(doinit * 8, point_direction(sxsx, sysy, sxsx2, sysy2))
			damage = 1
			angle = 0
			path_length = -1
		}
	}
}

alarm[0] = room_speed * 2

invert = 1
witch_speed = 0