var inst, inst2;

if alarm[11] <= 0
{
    if objPlayer_x > 170
    {
        var lasinfckup = instance_create(x, y, objDeadWoodLaser)
        
        with(lasinfckup)
        {
        spd = 5 * global.enemy_spd
        damage = 1
        angle = random(360)
        image_angle = angle
        laser_type = "wave"
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
        if alarm0_add = false
        {
        alarm[0] += room_speed * 7
        alarm0_add = true
        }
    }
    else
    {
    alarm[2] = 60
    }
    
    //Laser
    if attack_choice = 2
    {
        if alarm[0] < room_speed * 4
        {
        laser_type = "wave"
        }
    }
    else
    {
    alarm[3] = 55
    alarm[6] = 55
    angle = point_direction(x - 20, y - 20, objPlayer_x, objPlayer_y)
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
    ///
    }
    else
    {
    alarm[5] = 5
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

