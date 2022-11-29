if spawn = true {
	pos_y -= 60
	y = pos_y
	spawn = false
}

if alarm[11] <= 0
{
    //attack choosing
    if attack_choice = 0 and wait = false
    {
    alarm[0] = room_speed * 7
    attack_check(3)
    }
    
    //lightning
    if attack_choice = 1
    {
    sprite_index = sprBoarHerderPistol
    }
    else
    {
    alarm[2] = 30
    }
    
    //Shotgun
    if attack_choice = 2
    {
    sprite_index = sprBoarHerderShotgun
    }
    else
    {
    alarm[3] = 30
    }
    
    //Rifle
    if attack_choice = 3
    {
    sprite_index = sprBoarHerderRifle
    }
    else
    {
    alarm[4] = 30
    }

}
else
{
    var i;
    
    for(i = 0; i <= 10; i++)
    {
    alarm[i] = 100
    }
}


if !instance_exists(objBoar)
{
x += 2
hp = 0.1
max_hp = 100000
}


