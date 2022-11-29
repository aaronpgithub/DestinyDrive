event_inherited()

x = xpos

y += spd

if y > y_pos - 5
{
damage = 3
}

if y >= y_pos
{
    globalvar bubbahubba, angrock;
    
    angrock = image_angle

    for(bubbahubba = 4; bubbahubba >= 0; bubbahubba--)//bubbahubba is the big angle variable
    {
        var hubbabubba = instance_create(x, y, objEnemyBullet) //hubbabubba is the bullet instance
        
            with(hubbabubba)
            {
            angle = 360 * (0.20 * bubbahubba) + angrock
            spd = 4 * global.enemy_spd
            damage = 1
            image_angle = angle
            }
    }
    
instance_destroy()
}

