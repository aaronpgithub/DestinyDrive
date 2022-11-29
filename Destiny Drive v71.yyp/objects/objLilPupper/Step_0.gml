x = 15 + xoff

if bullet_amount < 10 and burp = false
{
    if dir = "up"
    {
        y -= 1.5
        if y < road_y_min dir = "down"
    }
    else
    {
        y += 1.5
        if y > road_y_max dir = "up"
    }
}

if bullet_amount <= 10 and burp = false
{
alarm[0] = 50
}

if bullet_amount = 0 burp = false

if burp = true
{
        var buperp = instance_create(x, y, objBullet)
        
        with(buperp)
        {
        damage = 10 * global.dmg
        spd = 3 * global.shot_speed
        angle = random_range(-20, 20) * global.accuracy
        no_flash = true
        }
    bullet_amount -= 1
}

