event_inherited()

if !instance_exists(objDeathGangKid1) and !instance_exists(objDeathGangKid2) and !instance_exists(objDeathGangKid3)
{
instance_destroy()
}

if hp <= 0
{
hp = 1
}

if instance_exists(objPlayer)
{
    if objPlayer_x > 170
    {
    var neighborbool = instance_create(320, random_range(68, 245), objEnemyBullet)
    
        with(neighborbool)
        {
        spd = -5 * global.enemy_spd
        damage = 1
        angle = random_range(-4, 4)
        }
    }
}

