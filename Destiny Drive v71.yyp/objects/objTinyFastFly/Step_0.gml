if instance_exists(objQueenOfFliesFastMiniboss)
{
    if x < pos_x + 1 and y < pos_y + 1 and global.hp > 0 and objQueenOfFliesFastMiniboss.attack_choice = 2
    {
    
    }
    else
    {
    alarm[2] = 10
    }
    
    if global.hp > 0 and objQueenOfFliesFastMiniboss.attack_choice != 2
    {
    x += 9
    }
    else
    {
    x = lerp(x, pos_x, 0.2)
    y = lerp(y, pos_y, 0.2)
    }
}
else
{
x += 9
}

