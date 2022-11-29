event_inherited()

if x < 320
{
    repeat(3)
    {
        var inst;
        
        inst = instance_create(x - 5, y, objMiniFire)
        
        with(inst)
        {
        sprite_index = sprMiniFire
        damage = 1 * global.dmg
        spd = 7 * global.shot_speed
        angle = random(360)
        }
    }
}

