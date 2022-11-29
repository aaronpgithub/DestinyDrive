if instance_exists(objBanditCaravan) x = objBanditCaravan.x

if objPlayer_x < 180 alarm[7] = 20

funneling = false

if objBanditCaravan.attack_choice = 2 and objBanditCaravan.funnel = true funneling = true

    if instance_exists(objBanditCaravan)
    {
        if objBanditCaravan.attack_choice = 3 or funneling = true
        {
        //shooting
        }
        else
        {
            with(instance_find(objMiniCaravan, 0))
            {
            alarm[2] = 12
            }
			funnel_angle = -10
        }
    }
    else
    {
    instance_destroy()
    }
