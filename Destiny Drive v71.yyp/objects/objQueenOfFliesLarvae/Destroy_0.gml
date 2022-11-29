globalvar i, rand_ang; //random angle difference

rand_ang = random(20)

for(i = 10; i > 0; i--)
{
var inst;
inst = instance_create(x, y, objQueenOfFliesLarvaeFly)

    with(inst)
    {
    angle = (36 * i) + rand_ang
    angle_start = (36 * i) + rand_ang
    }
}

