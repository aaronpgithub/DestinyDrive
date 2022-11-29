globalvar xx, yy, var_angle;
var inst;

xx = x
yy = y
var_angle = angle


switch(global.level)
{
    case "wasteland":
    inst = instance_create(x + 200, global.yy, choose(objDoubleShot, objTurretCar, objJunker, objMediCar))
    break;
    case "swamp":
    inst = instance_create(x + 200, global.yy, choose(objDoubleShot, objTurretCar, objJunker, objMediCar, objBanditTruck, objLockedEnemy))
    break;
    case "forest":
    inst = instance_create(x + 200, global.yy, choose(objDoubleShot, objTurretCar, objJunker, objMediCar, objBanditTruck, objLockedEnemy, objBuzzBuzz))
    break;
}

with(inst)
{
nat_angle = var_angle
rotate = true
pos_x = xx
pos_y = yy
}

instance_destroy()

