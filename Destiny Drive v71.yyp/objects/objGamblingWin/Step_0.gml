//This tests what the win object looks like, and does a different action for each image.
    switch(image_index)
    {
    //Health
    case 0:
    str = "HP!"
        if spawn = true
        {
        global.hp += 2
        spawn = false
        }
    break;
    
    //Stat Up
    case 1:
    str = string(stat) + "UP!"
        if spawn = true
        {
            switch(stat)
            {
            case "DAMAGE ":
            global.dmg += 0.2
            break;
            
            case "ACCURACY ":
            global.accuracy -= 0.1
            break;
            
            case "FIRE RATE ":
            global.fire_rate -= 0.1
            break;
            
            case "LUCK ":
            global.luck += 0.1
            break;
            
            case "SHOT SPEED ":
            global.shot_speed += 0.1
            break;
            }
            spawn = false
        }
    break;
    
    //Money
    case 2:
    str = "MONEY!"
        if spawn = true
        {
        global.money += irandom_range(30, 50)
        spawn = false
        }
    break;
    
    //Energy
    case 3:
    str = "ENERGY!"
        if global.use_itm[0] > -1
        {
        global.use_itm[1] = global.use_itm[2]
        }
    break;
    
    case 4:
    str = string(stat) + "DOWN!"
        if spawn = true
            {
                switch(stat)
                {
                case "DAMAGE ":
                global.dmg -= 0.1
                break;
                
                case "ACCURACY ":
                global.accuracy += 0.1
                break;
                
                case "FIRE RATE ":
                global.fire_rate += 0.1
                break;
                
                case "LUCK ":
                global.luck -= 0.1
                break;
                
                case "SHOT SPEED ":
                global.shot_speed -= 0.1
                break;
                }
                spawn = false
            }
    break;
    }

y -= 1.3 - image_xscale

if image_xscale < 1
{
image_xscale += 0.05
image_yscale = image_xscale
}
else
{
image_alpha -= 0.05
}

if image_alpha < 0
{
instance_destroy()
}

