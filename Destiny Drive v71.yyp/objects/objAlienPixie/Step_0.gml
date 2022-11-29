event_inherited()

if instance_exists(objPixieStorm)
{
    if objPixieStorm.attack_choice = 3
    {
        y = objPixieStorm.alien_x + offset
        outside_special = true
    }
    else
    {
        outside_special = false
    }
}

    if x < 0
    {
    instance_destroy()
    }


