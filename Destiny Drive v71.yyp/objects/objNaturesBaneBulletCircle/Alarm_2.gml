alarm[2] = room_speed * random_range(1, 2.5)


var circ_inst;

circ_inst = instance_create(x, y, objNaturesBaneCircleBulletSpecial)

    with(circ_inst)
    {
    dis = 60 * objNaturesBaneBulletCircle.dis_multiplier
    image_angle = random(360)
    }


