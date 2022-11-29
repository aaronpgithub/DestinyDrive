if !instance_exists(objNaturesBane)
{
    if hp <= 0 and object_get_parent(object_index) != objBossParent
    {
        if unique_death = false
        {
        instance_destroy()
        }
    }
}



if dest_alrm != -1
{
dest_alrm -= 1
}

if dest_alrm = 0
{
instance_destroy()
}

if freeze = true and object_index != objFreezeEnemy and freeze_done = false and object_index != objBossParent and sprite_exists(sprite_index)
{
globalvar sprin, hpp, imgind, oldobj, oldspd;

sprin = sprite_index
hpp = max_hp
imgind = image_index
oldobj = object_index
oldspd = image_speed

instance_change(objFreezeEnemy, false)

    with(self)
    {
    oldspr = sprin
    sprite_index = sprin
    hp = hpp
    max_hp = hpp
    image_speed = 0
    imgind = image_index
    old_object = oldobj
    freeze_speed = oldspd
    }
}

