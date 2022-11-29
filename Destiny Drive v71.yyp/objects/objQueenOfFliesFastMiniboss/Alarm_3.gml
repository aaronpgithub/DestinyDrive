/// @description Tiny Flies
globalvar i;

for(i = 3; i > -1; i--)
{
var inst;

inst = instance_create(x, y, objTinyFastFly)

    with(inst)
    {
    pos_y = 81 + (46 * i)
    }
}

