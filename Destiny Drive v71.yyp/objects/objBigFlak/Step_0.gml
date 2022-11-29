event_inherited()

globalvar ang;

if x <= 6 or y >= 230
{
    ang = random(360)
    globalvar tt;
    
        for(tt = 12; tt > -1; tt--)
        {
            var inst = instance_create(x, y, objEnemyBullet)
            
            with(inst)
            {
            damage = 1
            angle = (27.6 * tt) + ang
            spd = 3.5 * global.enemy_spd
            image_angle = angle
            }
            
            var inst2 = instance_create(x, y, objEnemyBullet)
            
            with(inst2)
            {
            damage = 1
            angle = (27.6 * tt) + ang
            spd = 3 * global.enemy_spd
            image_angle = angle
            }
            
            var inst3 = instance_create(x, y, objEnemyBullet)
            
            with(inst3)
            {
            damage = 1
            angle = (27.6 * tt) + ang
            spd = 2.5 * global.enemy_spd
            image_angle = angle
            }
            
            var inst4 = instance_create(x, y, objEnemyBullet)
            
            with(inst4)
            {
            damage = 1
            angle = (27.6 * tt) + ang
            spd = 2 * global.enemy_spd
            image_angle = angle
            }
            
            var inst5 = instance_create(x, y, objEnemyBullet)
            
            with(inst5)
            {
            damage = 1
            angle = (27.6 * tt) + ang
            spd = 1.5 * global.enemy_spd
            image_angle = angle
            }
            
            var inst6 = instance_create(x, y, objEnemyBullet)
            
            with(inst6)
            {
            damage = 1
            angle = (27.6 * tt) + ang
            spd = 1 * global.enemy_spd
            image_angle = angle
            }
    }
    
    instance_destroy()
}

