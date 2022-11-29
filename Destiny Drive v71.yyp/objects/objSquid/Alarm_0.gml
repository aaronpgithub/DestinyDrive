alarm[0] = 70 * ((instance_number(objEnemyParent) - instance_number(objFly)) / 2)
var squid_inst = instance_create(x - 45, y - 20, objSquidFlak)

champion_bullet(squid_inst)

