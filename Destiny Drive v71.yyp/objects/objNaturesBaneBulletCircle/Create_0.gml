pos_x = objPlayer_x
pos_y = objPlayer_y
dis_multiplier = 1 //changes size of circle space
alarm[0] = room_speed * random_range(3, 6)
alarm[1] = room_speed * random_range(1, 3)
alarm[2] = room_speed * random_range(1, 2.5)


var i, i2, i3, i4, i5;

for(i = 24; i > 0; i--)
{
globalvar i_angle;
var inst;
    inst = instance_create(x, y, objNaturesBaneCircleBullet)
    
    with(inst)
    {
    image_angle = 24 * i
    }
}

for(i2 = 36; i2 > 0; i2--)
{
globalvar i2_angle;
var inst2;
    inst2 = instance_create(x, y, objNaturesBaneCircleBullet)
    
    with(inst2)
    {
    image_angle = 10 * i2
    generation = 1
    }
}

for(i3 = 48; i3 > 0; i3--)
{
globalvar i3_angle;
var inst3;
    inst3 = instance_create(x, y, objNaturesBaneCircleBullet)
    
    with(inst3)
    {
    image_angle = 7.5 * i3
    generation = 2
    }
}

for(i4 = 60; i4 > 0; i4--)
{
globalvar i4_angle;
var inst4;
    inst4 = instance_create(x, y, objNaturesBaneCircleBullet)
    
    with(inst4)
    {
    image_angle = 6 * i4
    generation = 3
    }
}

