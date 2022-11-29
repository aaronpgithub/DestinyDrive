if alarm[11] <= 0
{
	if !instance_exists(objPyramidLight) instance_create(x - 90, y, objPyramidLight)
	
    if objPlayer_x < 170
    {
        alarm[9] = 80
    }
    else
    {
        if alarm[9] < 0
        {
            var babfir = instance_create(x, y, objFlakFire)
        
            with(babfir)
            {
            spd = 3 * global.enemy_spd
            damage = 3
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
            image_angle = angle
            }
        }
    }

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = room_speed * 10
    attack_check(4)
    }
    
    //Spiral
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 20
	burst = 9
    }
    
    //Pyramid Light
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 20
    }
    
    //Wave
    if attack_choice = 3
    {
		if t < 0 tdir = 1
		if t > 6 tdir = -1
    }
    else
    {
    alarm[4] = 20
	t = irandom(15)
	tdir = choose(1, -1)
    }
    
    //Cloud Creature
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 20
    }
}
else
{
    var i;
    
    for(i = 0; i <= 10; i++)
    {
    alarm[i] = -1
    }
}

