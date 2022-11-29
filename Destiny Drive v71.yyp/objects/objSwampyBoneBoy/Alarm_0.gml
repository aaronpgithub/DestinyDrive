/// @description shoot

var junker_inst;


if hp > 0
{
    alarm[0] = 50
            
        junker_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
            
        with(junker_inst)
        {
        angle = 180 + random_range(-5, 5)
        spd = 3 * global.enemy_spd
        damage = 1
            
        sprite_index = sprBoneBoyShot
            
        image_angle = angle
        }
            
        champion_bullet(junker_inst)
}










