if instance_exists(objShop)
{
    if objShop.bye = false
    {  
        if x < objShop.x - 135
        {
        x = objShop.x - 135
        }
        
        if x > objShop.x + 133
        {
        x = objShop.x + 133
        }
        
        if x < objPlayer.x - 1
        {
        x += 1
        t += 4
        y = (ystart + 4) + 3 * sin(degtorad(t))
        }
        else
        {
            if x > objPlayer.x + 1
            {
            x -= 1
            t += 4
            y = (ystart + 4) + 3 * sin(degtorad(t))
            }
            else
            {
            y = lerp(y, ystart + 4, 0.05)
            t = 0
            }
        }
    }
    else
    {
    y = lerp(y, ystart + 4, 0.05)
    t = 0
    x -= 2
    }
}
else
{
instance_destroy()
}

