if global.decal_spd = 0 and y < death
{
sprite_index = sprRainDrop
}

if y > death
{
sprite_index = sprRainDropSplash
image_speed = 0.3
}

if sprite_index != sprRainDropSplash
{
y += 5
}

x -= spd * global.decal_spd

