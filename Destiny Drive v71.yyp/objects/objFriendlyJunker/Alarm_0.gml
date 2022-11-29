alarm[0] = 25

var boneszones = instance_create(x + (sprite_get_width(sprite_index) / 2), y - (sprite_get_height(sprite_index) / 2), objBullet)

with(boneszones)
{
damage = 5 * global.dmg
angle = random_range(-4, 4) * global.accuracy
spd = 4 * global.shot_speed

image_angle = angle
}

