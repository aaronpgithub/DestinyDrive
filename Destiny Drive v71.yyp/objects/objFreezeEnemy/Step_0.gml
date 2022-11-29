event_inherited()

image_speed = 0
t = 0

freeze_time -= 1

if sprite_index = sprTurretCar
{
sprite_index = sprTurretCarFull
}

if freeze_time <= 0
{
    globalvar hpp;

    hpp = max_hp
    
    instance_change(old_object, false)

    with(self)
    {
    sprite_index = oldspr
    max_hp = hpp
    freeze = false
    freeze_done = true
    image_speed = freeze_speed
    }
}

