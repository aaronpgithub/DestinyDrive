if x <= 0
{

    if global.shields[0] = 0 { 
    player_take_damage(1)
    }
    else {
    global.shields[0] -= 1
    }
    
instance_destroy()
}

