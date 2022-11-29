/// @description shoot

var junker_inst;


if hp > 0
{
    var found = false;

    for(var k = ds_list_size(global.character_trait); k > -1; k--)
    {
        if ds_list_find_value(global.character_trait, k) = "protect the young"
        {
        found = true
        }
    }
    
        if found = false
        {
        alarm[0] = random_range(30, 150)
            
            repeat(4)
            {
            junker_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
            
                with(junker_inst)
                {
                angle = 180 + random_range(-23, 23)
                spd = 1 * global.enemy_spd
                damage = 1
                
                sprite_index = sprIceBoneBoyBullet
                
                image_speed = 0.1
                image_index = random(image_number)
                
                image_angle = angle
                motion_set(angle, spd)
                }
            
            champion_bullet(junker_inst)
            }
            
            x += 8
        }
}










