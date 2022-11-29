

if !instance_exists(objNeighborhoodGangKid1) and !instance_exists(objNeighborhoodGangKid3) {
	alarm[5] = 20
	    repeat(10)
	    {
	        var neishtbul = instance_create(x, y, objEnemyBullet)
        
	        with(neishtbul)
	        {
	        spd = -2 * global.enemy_spd
	        damage = 1
	        angle = random_range(-45, 45)
	        }
	    }
} else {
	if objNeighborhoodGang.alarm[11] > 0 or burst < 0
	{
	burst = irandom_range(2, 4)
	alarm[5] = room_speed * 3
	}
	else
	{
	alarm[5] = 20

	    if point_distance(x, y, pos_x, pos_y) <= 5
	    {
    
	        repeat(10)
	        {
	            var neishtbul = instance_create(x, y, objEnemyBullet)
        
	            with(neishtbul)
	            {
	            spd = -2 * global.enemy_spd
	            damage = 1
	            angle = random_range(-45, 45)
	            }
	        }
        
	        burst -= 1
	    }
	}
}

