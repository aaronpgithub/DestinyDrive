if objNeighborhoodGang.alarm[11] > 0 or burst < 0
{
	if !instance_exists(objNeighborhoodGangKid1) and !instance_exists(objNeighborhoodGangKid2) {
		burst = 60
		alarm[5] = room_speed * 1
	} else {
	burst = irandom_range(2, 6)
	alarm[5] = room_speed * 3
	}
}
else
{
alarm[5] = 5

        var neipasbul = instance_create(x, y, objEnemyBullet)
    
        with(neipasbul)
        {
        spd = 6 * global.enemy_spd
        damage = 1
        angle = point_direction(x, y, objPlayer_x, objPlayer_y)
        image_angle = angle
        sprite_index = sprEnemyBullet
        }
    
    burst -= 1

}

