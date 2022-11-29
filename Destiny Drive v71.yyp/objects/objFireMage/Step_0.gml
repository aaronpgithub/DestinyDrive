if alarm[11] <= 0
{
    if objPlayer_x < 170
    {
        alarm[9] = 80
    }
    else
    {
        if alarm[9] < 0
        {
            var babfir = instance_create(x, y, objFlakFire)
        
            with(babfir)
            {
            spd = 3 * global.enemy_spd
            damage = 3
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
            image_angle = angle
            }
        }
    }

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    }
    
    //chainsaw
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 60
    }
    
    //Laser
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 55
    }
    
    //crow
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
    
    //Cloud Creature
    if attack_choice = 4
    {
    var inst = instance_create(320, 80, objFireBurst)
    var inst2 = instance_create(320, 228, objFireBurst)
    
        with(inst)
        {
        image_speed = 0.005
        spd = -6
        angle = 0
        image_angle = random(360)
        }
        
        with(inst2)
        {
        image_speed = 0.005
        spd = -6
        angle = 0
        image_angle = random(360)
        }
    }
    else
    {
    alarm[5] = 5
    alarm[6] = room_speed * 1.2
    }
}
else
{
    var i;
    
    for(i = 0; i <= 10; i++)
    {
    alarm[i] = -1
    }
}

