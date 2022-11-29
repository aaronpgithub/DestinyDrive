damage = 1
var parent_object;
parent_object = instance_number(objEnemySnowflake) - 1;

var daamg = damage;

for(var lyr = 6; lyr >= 0; lyr--) //lyr is the angle
{
    for(var angle = 5; angle > 0; angle--) //angle is how far out you go
    {
        var inst = instance_create(x + lengthdir_x(angle * 8, 60 * lyr), y + lengthdir_y(angle * 8, 60 * lyr), objSnowflakeBullet)
        
        with(inst)
        {
        spd = 0
        len = angle * 8
        angler = 60 * lyr
        damage = daamg
        image_angle = angler
        no_move_destroy = false
        follow = parent_object
        }
    }
}

inacc = 0
angles = 0
spd = 2

