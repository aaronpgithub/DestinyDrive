event_inherited()
image_xscale = 1
image_yscale = 1
damage = 10 * global.dmg
sprite_index = sprRocket

if guided = false
{
image_angle += choose(-5, 5)
motion_set(image_angle, 5)
}
else
{
image_angle = point_direction(x, y, objRocketGuide.x, objRocketGuide.y)
motion_set(image_angle, 2.5)
}

