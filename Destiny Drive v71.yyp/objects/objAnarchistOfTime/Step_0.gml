var inst, inst2;

if alarm[11] <= 0
{

    if objPlayer_x > 190
    {
    var anarchy = instance_create(320, y, objEnemyBullet)
    
        with(anarchy)
        {
        angle = random_range(-70, 70)
        spd = -3 * global.enemy_spd
        damage = 1
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
        
        if attack_choice = 4
        {
        alarm[0] = random_range(room_speed * 11, room_speed * 15)
        }
    }
    
    //Spiral Flak
    if attack_choice = 1
    {    
        if pause = true
        {
        sped = 2
        }
        else
        {
        t += 3
        }
    }
    else
    {
    alarm[2] = 120
    alarm[6] = 6
    }
    
    //wavy bullets
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
        if attack_choice != 1 and attack_choice != 2 and attack_choice != 3
        {
        alarm[7] = room_speed * random_range(1, 4)
        }
    
    //Bullet blasts
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

