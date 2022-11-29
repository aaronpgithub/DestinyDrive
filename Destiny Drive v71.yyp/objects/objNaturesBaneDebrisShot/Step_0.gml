event_inherited()

image_angle += 5

motion_set(angle, spd)

if instance_exists(objNaturesBane)
{
    if objNaturesBane.alarm[0] <= room_speed * 7.5 and generation = 0
    {
    image_angle += 10 * global.enemy_spd
    spd = 0
    image_xscale += dest_spd
    image_yscale = image_xscale
    }
}

if image_xscale >= 1.7
{
instance_destroy()
}

if destroy = true
{
image_alpha -= 0.05
}

if image_alpha < 0
{
instance_destroy()
}

