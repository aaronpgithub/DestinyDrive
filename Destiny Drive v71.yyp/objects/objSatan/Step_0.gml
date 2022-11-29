var inst, inst2;

depth = 35

pos_x = room_width / 2
pos_y = 58

if alarm[11] <= 0 and !instance_exists(objParentWeak) and dead = false
{
    global.t += 10
    global.t = global.t mod 360
    
    //fire rising
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 12
    }
    
    //Rocks Falling
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //fast puke walls
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 15
    }
    
    //Bullet Blizzard
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 15
    }
    
    //snakes of hell
    if attack_choice = 5
    {
    }
    else
    {
    alarm[6] = 12
    alarm[7] = 120
    burst = 4
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false 
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(5)
    }
}
else
{
    alarm[10] = room_speed * 30
    
    if dead = true and !instance_exists(objParentWeak)
    {
    pos_y += 1
    y = pos_y
    sprite_index = sprEvilSatanDead
    
        if y < ystart
        {
        instance_destroy()
        }
    }
}

