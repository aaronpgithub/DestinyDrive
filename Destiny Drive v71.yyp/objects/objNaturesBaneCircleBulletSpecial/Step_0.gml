//Growing into sight
if spd > -2 and image_xscale != 0.73
{
    if image_xscale < 1
    {
    image_xscale += 0.05
    }
}

if global.hp <= 0
{
instance_destroy()
}

image_yscale = image_xscale
//

//Rotating
if alarm[0] > 5
{
image_angle += 3 * global.enemy_spd
}
//

if instance_exists(objNaturesBaneBulletCircle)
{
dis = lerp(dis, 60 * objNaturesBaneBulletCircle.dis_multiplier, 0.08)
    if spd > -2
    {
    x = objNaturesBaneBulletCircle.x + lengthdir_x(dis, image_angle)
    y = objNaturesBaneBulletCircle.y + lengthdir_y(dis, image_angle)
    }
}

if instance_exists(objNaturesBane)
{
    if objNaturesBane.dest_things = true
    {
    instance_destroy()
    }
}


