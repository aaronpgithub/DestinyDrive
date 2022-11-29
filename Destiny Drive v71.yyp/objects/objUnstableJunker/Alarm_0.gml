/// @description shoot

var unstable_inst;

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
        alarm[0] = random_range(30, 120)
        
            unstable_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
            with(unstable_inst)
            {
            angle = random_range(-5, 5)
            spd = -5 * global.enemy_spd
            damage = 1
            sprite_index = sprShifterBullet
            
            image_angle = angle
            motion_set(angle, spd)
            }
            
            champion_bullet(unstable_inst)
        }
}











