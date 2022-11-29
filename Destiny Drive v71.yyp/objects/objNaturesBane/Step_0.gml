var inst, inst2;

if alarm[11] <= 0
{

    global.t += 10
    global.t = global.t mod 360
    
    if objPlayer_x < x - 30
    {
    alarm[6] = 45
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false and !instance_exists(objNaturesBaneDebrisShot)
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    }
    
    //Wall
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //Debris
    if attack_choice = 2
    {
    //Handled in alarm, bud
        if !instance_exists(objNaturesBaneDebrisShot)
        {
        alarm[0] = random_range(room_speed * 10, room_speed * 13)
        }
    }
    else
    {
    alarm[3] = 12
    }
    
    //circle shot
    if attack_choice = 3
    {
    //nothin
    }
    else
    {
    alarm[4] = 15
    }
    
    //Invisible Bullets
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 15
    }
}

