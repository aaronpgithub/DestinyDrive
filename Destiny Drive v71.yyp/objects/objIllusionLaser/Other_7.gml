var inst;

if sprite_index = sprIllusionLaserCreate
{
sprite_index = sprIllusionLaser
image_speed = 0.1

inst = instance_create(x + lengthdir_x(-32, image_angle), y + lengthdir_y(-32, image_angle), objIllusionLaser)

with(inst)
{
image_angle = objIllusionLaserStart.image_angle
}
}

