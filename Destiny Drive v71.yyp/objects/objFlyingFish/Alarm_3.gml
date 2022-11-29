/// @description bubble

var bounceflak = instance_create(x, y, objEnemyBubble)

with(bounceflak)
{
angle = 90
damage = 3
spd = 2
image_angle = random(360)
}

var bounce2flak = instance_create(x, y, objEnemyBubble)

with(bounce2flak)
{
angle = 270
damage = 3
spd = 2
image_angle = random(360)
}

