
if !instance_exists(objNeighborhoodGangKid2) and !instance_exists(objNeighborhoodGangKid3) {
	alarm[5] = 12
	var neipisbul = instance_create(x, y, objEnemyBullet)

	    with(neipisbul)
	    {
	    spd = 3 * global.enemy_spd
	    damage = 1
	    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
	    }
} else {
	if objNeighborhoodGang.alarm[11] > 0 or burst < 0
	{
	burst = irandom_range(4, 10)
	alarm[5] = room_speed * 3
	}
	else
	{
	alarm[5] = 20
	var neipisbul = instance_create(x, y, objEnemyBullet)

	    with(neipisbul)
	    {
	    spd = 3 * global.enemy_spd
	    damage = 1
	    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
	    }
    
	    burst -= 1
	}
}
