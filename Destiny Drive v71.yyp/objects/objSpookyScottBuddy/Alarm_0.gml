if hp > 0
{
alarm[0] = random_range(30, 100)
sprite_index = sprSpookyScottBuddyShoot
image_index = 0

var ghostyinst = instance_create(x, y, objEnemyBullet)

    with(ghostyinst)
    {
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
    spd = 5 * global.enemy_spd
    damage = 1        
	
	sprite_index = sprSpookyScottBuddyShot
            
    image_angle = angle
    }
    
    champion_bullet(ghostyinst)
}

