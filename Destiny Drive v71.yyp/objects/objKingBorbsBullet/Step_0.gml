event_inherited()

if instance_exists(objKingBorbs)
{
    x = objKingBorbs.x + lengthdir_x(len, dir + objKingBorbs.angle)
    y = objKingBorbs.y + lengthdir_y(len, dir + objKingBorbs.angle) 
    
    if objKingBorbs.attack_choice != 1
    {
    var gogles = instance_create(x, y, objEnemyBullet)
    
    globalvar kiwi;
    kiwi = (dir + objKingBorbs.angle) + 90
    
        with(gogles)
        {
        angle = kiwi
        damage = 1
        spd = 1.5 * global.enemy_spd
        }
        
        instance_destroy()
    }
}
else
{
    instance_destroy()
}

