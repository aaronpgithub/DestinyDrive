event_inherited()

var inst, inst2;

    if !instance_exists(objQueenOfFliesFastMiniboss)
    {
        if !instance_exists(objQueenOfFliesStrongMiniboss)
        {
            if hp >= round(1900 * global.enemy_hp)
            {
            hp = round(1900 * global.enemy_hp)
            }
            else
            {
            hp = round(1900 * global.enemy_hp) / 2
            }
        }
        else
        {
        hp = (round(1900 * global.enemy_hp) / 2) + objQueenOfFliesStrongMiniboss.hp
        }
    }
    else
    {
    hp = objQueenOfFliesFastMiniboss.hp
    }

    if objPlayer_x > 230
    {
        var blugh = instance_create(x + 24, y, objBanditBullet)
        
        with(blugh)
        {
        angle = 90 + random_range(-45, 15)
        spd = -4 * global.enemy_spd
        damage = 1
        }
    }
    
if alarm[11] <= 0 and attack_amt > 0 and boss_amt > 0
{
    
    //big bullet
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //larvae
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //flies
    if attack_choice = 3
    {
        if instance_exists(objBanditTruck) or instance_exists(objBuzzBuzz)
        {
        wait = true
        attack_choice = 0
        alarm[1] = room_speed * 1.5
        }
    }
    else
    {
        if !instance_exists(objBanditTruck) and !instance_exists(objBuzzBuzz)
        {
        alarm[4] = 15
        }
        
        if instance_exists(objBanditTruck) or instance_exists(objBuzzBuzz)
        {
        wait = true
        alarm[1] = 5
        attack_choice = round(random_range(1, 2))
        //attack_check()
        }
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(3)
    }
}

//create boss
if alarm[11] <= 0 and boss_amt > 0 and attack_amt <= 0
{
    if boss_amt = 2
    {
        if !instance_exists(objQueenOfFliesStrongMiniboss)
        {
        instance_create(272, 160, objMinibossSpawn)
        }
    }
    
    if boss_amt = 1
    {
        if !instance_exists(objQueenOfFliesFastMiniboss)
        {
        instance_create(272, 160, objMinibossSpawn)
        }
    }
}

//after both bosses, leave
if boss_amt <= 0
{
x += 9
}

