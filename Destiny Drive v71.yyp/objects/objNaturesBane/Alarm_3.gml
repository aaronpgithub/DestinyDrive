alarm[3] = 20

if alarm[0] > room_speed * 7.5
{
    var deb_inst;
    
    deb_inst = instance_create(x, y, objNaturesBaneDebrisShot)
    
        with(deb_inst)
        {
        generation = 0
        }
}

