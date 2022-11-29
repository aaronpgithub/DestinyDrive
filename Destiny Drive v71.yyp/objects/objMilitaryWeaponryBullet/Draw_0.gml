event_inherited()

if instance_exists(objMilitaryWeaponry)
{    
    if objMilitaryWeaponry.attack_choice = 5
    {
        if frac(objMilitaryWeaponry.alarm[3] / 2) = 0
        {
        shader_set(flash_shader_universal)
        }
    }
}

draw_self()
shader_reset()

