event_inherited()

if instance_exists(objMilitaryWeaponry)
{
    if objMilitaryWeaponry.attack_choice = 2
    {
        if image_alpha > 0 image_alpha -= 0.03
    }
    else
    {
        if image_alpha < 1 image_alpha += 0.05
    }
    
    if objMilitaryWeaponry.attack_choice = 3
    {
    spd = -(objMilitaryWeaponry.spd)
    }
    else
    {
    spd = -3 * global.enemy_spd
    }
    
    if objMilitaryWeaponry.attack_choice = 5
    {
    spd = 0
        if objMilitaryWeaponry.flip = true
        {
        y = lerp(y, new_y, 0.1)
        }
        else
        {
        y = lerp(y, ystart, 0.1)
        }
    }
}

