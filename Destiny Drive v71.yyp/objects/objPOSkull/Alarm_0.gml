/// @description shoot

var poj_inst;


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
        alarm[0] = 200
            
            poj_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objCityLaser)
            
            with(poj_inst)
            {
            angle = random_range(-5, 5)
            spd = 0
			shoot_start = 70
			alarm[4] = 70
            damage = 1
			image_angle = angle
            }
            
            champion_bullet(poj_inst)
        }
}










