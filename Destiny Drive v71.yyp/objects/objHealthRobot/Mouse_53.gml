if x <= 260
{
    if !instance_exists(objItem) and !instance_exists(objGun) and health_given < 10
    {
        if global.hp > health_price
        {
        text_amount = 0
        saying = "YES YES GIVE ME MORE I GIVE YOU MORE"
        
            player_take_damage(1)
            
            health_given += 1
            
            switch(health_given)
            {
                case 5:
                global.shields[0] += 1
                break;
                
                case 6:
                global.shields[0] += 1
                break;
                
                case 7:
                global.shields[0] += 3
                break;
                
                case 8:
                instance_create(x, y, objGun)
                break;
                
                case 9:
                instance_create(x, y, objItem)
                break;
                
                case 10:
                global.wave = global.wave_max + 1
                global.level = "volcano"
                trns = true
                break;
            }
        }
        else
        {
        text_amount = 0
        saying = "NO HP, CANNOT GIVE STUFF"
        }
    }
}

