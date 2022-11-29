sprite_index = sprSnowball

y += vsped
x += spd
vsped += 0.2

image_angle += 5


//image_xscale = 1
//image_yscale = 1

if spd > 5
{
spd = 5
}

if y > ypos
{
instance_destroy()
}

if freeze_chance <= 0.1 * global.luck freeze = true

