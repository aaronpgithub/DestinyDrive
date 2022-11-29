if hit_wall = true exit;

alarm[0] = 8

ID += 1
len -= 24

if x + lengthdir_x(len, angle) < 0 hit_wall = true

var inst = instance_create(x + lengthdir_x(len, angle), y + lengthdir_y(len, angle), objGrappleHookBullet)

with(inst)
{
spd = 0
no_move_destroy = false
ID = objGrapplingHookShot.ID
angle = objGrapplingHookShot.angle
image_angle = angle
}

