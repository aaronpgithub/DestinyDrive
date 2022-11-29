globalvar aplepl;

for(var aplepl = 0; aplepl < 5; aplepl++)
{
    var gloplel = instance_create(x, y, objBullet)
    
    with(gloplel)
    {
    damage = 10 * global.dmg
    spd = 2.5 * global.shot_speed
    angle = (72 * aplepl) + random_range(-8, 8)
    image_speed = 0.15
    sprite_index = sprApplePeice
    }   
}

