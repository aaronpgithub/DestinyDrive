var inst, inst2;

if alarm[11] <= 0
{

    if attack_choice = 1 or attack_choice = 4
    {
    image_alpha = 0
    }
    else
    {
    image_alpha = 1
    }

    global.t += 10
    global.t = global.t mod 360
    
        if objPlayer_x > 190 and image_alpha != 0
        {
        var eeeek = instance_create(x, y, objGhostBullet)
        
            with(eeeek)
            {
            angle = random(360)
            }
        }
    
    //All The Walls
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //Spinbot
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    alarm[4] = 12
    }
    
    //Alien Rifle
    if attack_choice = 3
    {
        if alien_dir = "down"
        {
        alien_x += 0.9 * global.enemy_spd
        }
        else
        {
        alien_x -= 0.9 * global.enemy_spd
        }
    
        if alien_x < 64
        {
        alien_x = 65
        alien_dir = "down"
        }
        
        if alien_x > 245
        {
        alien_x = 244
        alien_dir = "up"
        }
    }
    else
    {
    alarm[5] = 15
    alien_x = 128
    }
    
    //Invisible Bullets
    if attack_choice = 4
    {
    //nothin
    }
    else
    {
    alarm[6] = 15
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    
        if attack_choice = 1 or attack_choice = 4
        {
        alarm[0] += room_speed * 4
        }
    }
}

