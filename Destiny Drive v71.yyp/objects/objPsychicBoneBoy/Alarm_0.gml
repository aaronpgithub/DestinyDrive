/// @description shoot

var junk_fire_inst;

if hp > 0
{
    if global.player != sprPlayerBoneBoy
    {
    alarm[0] = random_range(70, 80)
            
        junk_fire_inst = instance_create(mid_x, mid_y, objEnemyBullet)
		
        with(junk_fire_inst)
        {
        angle = random_range(-2, 2)
        spd = -1
        damage = 1
            
        image_angle = angle
		
		sprite_index = sprIllusionBullet
        }
            
        champion_bullet(junk_fire_inst)
    }
}

