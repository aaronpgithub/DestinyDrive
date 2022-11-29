y = lerp(y, pos_y, 0.1)

if alarm[11] <= 0
{
    if objPlayer_x > 220
    {
    var missup = instance_create(320, random_range(64, 250), objEnemyBullet)
    
        with(missup)
        {
        angle = 0
        spd = -3
        sprite_index = sprUFOLaser
        }
    }

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_choice = round(random_range(1, 3))
    //attack_check()
    }
    
    //Lasers
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //homing rockets
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //laser
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 15    
    alarm[5] = 15
    }
    
    if leave = true
    {
    pos_x += 6
    wait = true
    }
}

