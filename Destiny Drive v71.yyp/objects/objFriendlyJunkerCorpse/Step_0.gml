if global.hp > 0
{
motion_set(angle, spd * global.shot_speed)
image_angle = angle
}
else
{
motion_set(angle, 0)
}


