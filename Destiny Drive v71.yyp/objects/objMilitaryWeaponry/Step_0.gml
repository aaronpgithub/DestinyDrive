if alarm[11] <= 0
{
    chance_offset = clamp(chance_offset, -0.08, 0.2)
    chance_offset += 0.001

    if attack_choice != 5 t += 4
    t = t mod 360
    
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
    attack_check(6)
        if attack_choice = 2 alarm[0] = room_speed * random_range(2, 9)
    }
    
    //Flak Bullet
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    }
    
    //invisible
    if attack_choice = 2
    {
    }
    else
    {
    }
    
    //Frequency change
    if attack_choice = 3
    {
        var minn, maxx;
        minn = -0.1
        maxx = 0.1
        
        if spd < 0.2
        {
        minn = 0.1
        }
        
        if spd > 8
        {
        maxx = -0.1
        }
        
        spd += choose(minn, maxx)
    }
    else
    {
    }
    
    //Mine
    if attack_choice = 4
    {
    }
    else
    {
    }
    
    if attack_choice = 5
    {
    }
    else
    {
    alarm[3] = 55
    flip_twice = false
    }
}
else
{
alarm[2] = 5
}

///Obsolete

/*
var inst, inst2;

if alarm[11] <= 0
{

    if attack_choice != 5 t += 4
    t = t mod 360
    
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
    attack_choice = irandom_range(1, 6)
    //attack_check()
        if attack_choice = 2 alarm[0] = room_speed * random_range(2, 9)
    }
    
    //Flak Bullet
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    }
    
    //invisible
    if attack_choice = 2
    {
    }
    else
    {
    }
    
    //Frequency change
    if attack_choice = 3
    {
        var minn, maxx;
        minn = -0.1
        maxx = 0.1
        
        if spd < 0.2
        {
        minn = 0.1
        }
        
        if spd > 8
        {
        maxx = -0.1
        }
        
        spd += choose(minn, maxx)
    }
    else
    {
    }
    
    //Mine
    if attack_choice = 4
    {
    }
    else
    {
    }
    
    if attack_choice = 5
    {
    }
    else
    {
    alarm[3] = 55
    flip_twice = false
    }
}
else
{
alarm[2] = 5
}

/* */
/*  */
