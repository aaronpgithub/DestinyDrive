event_inherited()

if instance_exists(objQueenOfFlies) and global.hp > 0
{
    objQueenOfFlies.boss_amt -= 1
    global.hp += 8
}

