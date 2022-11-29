/// @description Acid Homing Walls
alarm[4] = 38

globalvar angleforbul;

for(angleforbul = 4; angleforbul >= 0; angleforbul--)
{
    var acidsprayhom = instance_create(x - 22, y - 8, objAcidBullet)
    
    with(acidsprayhom)
    {
    damage = 1
    spd = -4 * global.enemy_spd
    angle_added = 8 * angleforbul
    sensitivity = 35
    sprite_index = sprHomingAcidShot
    }
}

