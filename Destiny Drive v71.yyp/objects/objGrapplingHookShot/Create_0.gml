angle = random_range(-25, 25)
ID = 0 //setting the bullet ID
amp = 5 //sine wave amplitude
t = 0 //sine wave number
len = 0
alarm[0] = 1
hit_wall = false
sin_sum = 0

if instance_exists(objDeathGangKid2)
{
    with(objDeathGangKid2)
    {
    alarm[8] = room_speed * random_range(2, 4)
    }
}

