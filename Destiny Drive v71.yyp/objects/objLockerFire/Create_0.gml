event_inherited()

hp = round(40 * global.enemy_hp)
max_hp = hp

image_speed = 0.2
image_index = random(image_number)
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
len = 0

burst = irandom_range(30, 45)

if instance_exists(objNaturesBane)
{
instance_change(objLockedEnemy, true)
}

