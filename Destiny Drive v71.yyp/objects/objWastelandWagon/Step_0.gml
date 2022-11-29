if instance_exists(objWastelandBully)
{
	/*
    y = 4 * sin(degtorad(objWastelandBully.t)) + pos_y
    
    if objWastelandBully.alarm[11] > 0
    {
        if global.hp <= 0
        {
        x += 9    
        }
        else
        {
        x -= 1.5
        }
    }
    
    if objWastelandBully.sprite_index = sprWastelandBullyDead
    {
    x += 1.5
    }
	*/
	
	y = objWastelandBully.y + 15
    x = objWastelandBully.x + 12
}

