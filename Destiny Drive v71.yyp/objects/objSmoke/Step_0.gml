y -= raise
x += spd * global.decal_spd
image_angle += rot
image_xscale += grow
image_yscale = image_xscale
if fade = 0 {
image_alpha -= 0.01
} else image_alpha -= fade

if image_alpha <= 0
{
instance_destroy()
}

