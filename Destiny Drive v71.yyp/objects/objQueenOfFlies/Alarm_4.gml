if !instance_exists(objQueenOfFliesFastMiniboss) and !instance_exists(objQueenOfFliesStrongMiniboss)
{
instance_create(288, 112, objWeakSpawn)
instance_create(184, 224, objWeakSpawn)

alarm[0] = room_speed * 2
}

