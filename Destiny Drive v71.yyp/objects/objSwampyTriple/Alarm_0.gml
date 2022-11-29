if hp > 0
{
alarm[0] = random_range(80, 100)

		globalvar swamptangle;
		swamptangle = 12

	repeat(3) {
    var swamptripinst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
	
    with(swamptripinst)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + swamptangle
        spd = 2.6 * global.enemy_spd
        damage = 1                 
                
        image_angle = angle
    }
	
	swamptangle -= 12
    
    champion_bullet(swamptripinst)
	}
}

