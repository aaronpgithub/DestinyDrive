t += 1

x = room_width / 2

y = 47 * sin(degtorad(t)) + ystart

if y < -45
{
instance_destroy()
}

if give_stat = true
{
    switch(stat)
    {
    case "damage":
    global.dmg += 0.07
    break;
    
    case "fire rate":
    global.fire_rate -= 0.07
    break;
    
    case "shot speed":
    global.shot_speed += 0.07
    break;
    
    case "accuracy":
    global.accuracy -= 0.07
    break;
    
    case "luck":
    global.luck += 0.13
    break;
    }
    
    give_stat = false
}

