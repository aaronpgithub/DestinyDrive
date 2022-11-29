event_inherited()

hp = 0
max_hp = 0

invincible = true

attack_choice = 0

repeat(22)
{
var xx, yy;
    if objPlayer.sprite_index != sprPlayerDynaMike
    {
    xx = random_range(-75, 35)
    }
    else
    {
    xx = random_range(-75, 10)
    }
yy = random_range(20, 80)
inst = instance_create(x + xx, y, objBoar)

    with(inst)
    {
    pos_y = objBoarHerder.y - 60 + random_range(20, 90)
    }
}

boar_amt = instance_number(objBoar) - 1

spawn = true