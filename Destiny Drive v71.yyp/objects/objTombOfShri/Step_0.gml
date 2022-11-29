pos_y = 265
y = pos_y

if alarm[11] <= 0
{
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    
    if attack_choice = 1 alarm[0] = random_range(room_speed * 16, room_speed * 18)
    if attack_choice = 2 alarm[0] = random_range(room_speed * 20, room_speed * 22)
    }
    
    //Waves of bullet!!!
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 12
    }
    
    //Weirdsds
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    alarm[4] = 90
    }
    
    //mouse following
    if attack_choice = 3
    {
    mouseang = mouse_y_start - objPlayer.y
    }
    else
    {
    alarm[5] = 20
    mouse_y_start = mouse_y
    }
    
    //Slow Walls
    if attack_choice = 4
    {
    }
    else
    {
    alarm[6] = 20
    }
}

