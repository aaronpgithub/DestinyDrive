event_inherited()

if instance_exists(objEnemyBulletParent)
{
    if alarm[1] > 1
    {
        var easeofaccess = instance_find(objEnemyBulletParent, beam)
        
        if instance_exists(instance_find(objEnemyBulletParent, beam))
        {
            if easeofaccess.spd >= 3 and easeofaccess.x >= 0 and easeofaccess.x <= room_width and easeofaccess.y >= 0 and easeofaccess.y <= room_height
            {
            draw_line_colour(x - 30, y - 15, instance_find(objEnemyBulletParent, beam).x, instance_find(objEnemyBulletParent, beam).y, c_blue, c_blue)
            }
        }
    }
}

