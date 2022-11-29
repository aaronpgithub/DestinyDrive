var inst, inst2;

if alarm[11] <= 0
{

    global.t += 10
    global.t = global.t mod 360
    
    if objPlayer_x > 200
    {
    var boopopoo = instance_create(320, random_range(64, 240), objEnemyBullet)
    
        with(boopopoo)
        {
        angle = 0
        spd = -4 * global.enemy_spd
        damage = 1
        image_angle = 45
        }
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    
        if attack_choice = 1
        {
        alarm[0] = random_range(room_speed * 14, room_speed * 17)
        }
    }
    
    //Spiral Flak
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //Turret Buddies
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //Knights
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 15
    }
    
    //Invisible Bullets
    if attack_choice = 4
    {
    //nothin
    }
    else
    {
    alarm[5] = 15
    }
}

