/// @description water splash

alarm[2] = 8


var watspla = instance_create(x, y, objFlyingFishWater)

    with(watspla)
    {
    angle = point_direction(x, y, objPlayer_x, objPlayer_y)
    spd = 3 * global.enemy_spd
    damage = 1
    sprite_index = sprWaterBullet
    image_angle = angle
	bounce = true
    }


/*
repeat(8)
{
var watspla = instance_create(x, y, objEnemyBullet)

    with(watspla)
    {
    angle = random_range(-55, 55)
    spd = random_range(-2.4, -3) * global.enemy_spd
    damage = 1
    sprite_index = sprWaterBullet
    image_angle = angle
    }
}

