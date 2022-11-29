alarm[2] = random_range(5, 7)

if attack_choice = 5 exit; //not flipping

var chance = random(1)

    var inst = instance_create(x, y + (87 * sin(degtorad(t))) - 6, objMilitaryWeaponryBullet)
    
    with(inst)
    {
    spd = -3 * global.enemy_spd
    angle = 0
    damage = 1
    }

switch(attack_choice)
{
    case 1: //flak shot
        if chance <= 0.35 + chance_offset
        {
            with(inst)
            {
                instance_change(objMilitaryWeaponFlak, true)
                spd = -3 * global.enemy_spd
            }
            chance_offset -= 0.05
        }
    break;
    
    case 4: //mine
        if chance <= 0.30 + chance_offset
        {
            with(inst)
            {
                instance_change(objMilitaryWeaponMine, true)
                spd = -3 * global.enemy_spd
            }
            chance_offset -= 0.05
        }
    break;
    
    case 6: //turret
        if chance <= 0.20 + chance_offset
        {
            with(inst)
            {
                instance_change(objMilitaryWeaponTurret, true)
                spd = -3 * global.enemy_spd
            }
            chance_offset -= 0.05
        }
    break;
}

