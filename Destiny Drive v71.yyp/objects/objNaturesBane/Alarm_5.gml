globalvar i;

for(i = 3; i > 0; i--)
{
var inst;
inst = instance_create(x, y, objNaturesBaneEnemyStar)

    with(inst)
    {
    angle = 120 * i
    }
}

alarm[0] = room_speed * 4

