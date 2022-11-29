/// @description burst setup
if instance_exists(objBanditCaravan)
{
    if objBanditCaravan.attack_choice != 3 and funneling = false and alarm[8] <= 0 and objBanditCaravan.attack_choice != 5
    {
    ind_shoot = true
    burst = 4
    alarm[6] = 3
    }
    else
    {
    alarm[5] = room_speed * random_range(4, 10) //can shoot when not doing normal attack
    }
}

