alarm[0] = room_speed * 0.4
alarm[1] = 3

if instance_exists(objEnemyBulletParent)
{
    var choose_bullet = irandom(instance_number(objEnemyBulletParent) - 1)
    
    beam = choose_bullet
    
    var easeofaccess = instance_find(objEnemyBulletParent, choose_bullet)
    
    if instance_exists(easeofaccess)
    {
        with(easeofaccess)
        {
            if easeofaccess.spd >= 3 and easeofaccess.x >= 0 and easeofaccess.x <= room_width and easeofaccess.y >= 0 and easeofaccess.y <= room_height
            {
            spd *= 0.7
            }
        }
    }
}

