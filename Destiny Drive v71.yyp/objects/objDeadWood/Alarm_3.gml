alarm[3] = 8

if alarm[0] > room_speed * 7
{
    if laser_type = "straight"
    {
    alarm[3] = 12
    angle = point_direction(x - 20, y - 20, objPlayer_x, objPlayer_y)
    }
    
    
    var inst = instance_create(x - 20, y - 15, objDeadWoodLaser)
    var inst2 = instance_create(x - 20, y - 25, objDeadWoodLaser)
    
    with(inst)
    {
    t = 180
    spd = 5.5 * global.enemy_spd
    laser_type = objDeadWood.laser_type
    angle = -(objDeadWood.angle)
    }
    
    with(inst2)
    {
    t = 0
    spd = 5.5 * global.enemy_spd
    laser_type = objDeadWood.laser_type
    angle = -(objDeadWood.angle)
    }
}
else
{

alarm[3] = 15

    laser_type = "blast"
    
    if angle < 180 - 40
    {
    angle_add = true
    }
    
    if angle > 180 + 40
    {
    angle_add = false
    }
    
    if angle_add = true
    {
    angle += 3
    }
    
    if angle_add = false
    {
    angle -= 3
    }
    
    
    var inst = instance_create(x - 20, y - 15, objDeadWoodLaser)
    var inst2 = instance_create(x - 20, y - 25, objDeadWoodLaser)
    
    
    with(inst)
    {
    t = 180
    laser_type = objDeadWood.laser_type
    angle = -(objDeadWood.angle)
    }
    
    with(inst2)
    {
    t = 0
    laser_type = objDeadWood.laser_type
    angle = (objDeadWood.angle)
    }
}

