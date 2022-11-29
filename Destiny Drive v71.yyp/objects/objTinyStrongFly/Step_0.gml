if instance_exists(objQueenOfFliesStrongMiniboss)
{
    if x < pos_x + 1 and global.hp > 0 and objQueenOfFliesStrongMiniboss.attack_choice = 3
    {
    }
    else
    {
    alarm[2] = room_speed * random_range(0.2, 2)
    }
    
    if global.hp > 0 and objQueenOfFliesStrongMiniboss.attack_choice != 3
    {
    x += 9
    }
    else
    {
    x = lerp(x, pos_x, 0.2)
    y = lerp(y, pos_y, 0.2)
    }
    
    if ver_dir = "up"
    {
    pos_y -= 2
    }
    
    if ver_dir = "down"
    {
    pos_y += 2
    }
    
    if pos_y > 240
    {
    ver_dir = "up"
    }
    
    if pos_y < 64
    {
    ver_dir = "down"
    }
}
else
{
x += 9
}

