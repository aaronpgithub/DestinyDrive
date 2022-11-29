if !instance_exists(objQueenOfFliesFastMiniboss) and !instance_exists(objQueenOfFliesStrongMiniboss)
{
    alarm[3] = room_speed * 1
    
    instance_create(x, y, objQueenOfFliesLarvae)
}

