/// @description shoot

var junker_insts;


if hp > 0
{
        alarm[0] = random_range(30, 150)
            
            junker_insts = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
            
            with(junker_insts)
            {
            angle = 180 + random_range(-5, 5)
            spd = 3 * global.enemy_spd
            damage = 1
            sprite_index = sprBoneBoyShot
            }
            
            champion_bullet(junker_insts)
}










