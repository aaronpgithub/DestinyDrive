var inst = instance_create(x, y, objFireBurst)

with(inst)
{
image_speed = 0.3
sprite_index = sprFireBlast
spd = 0
damage = 5
no_move_destroy = false
}

instance_destroy()

