y -= raise
x += spd * global.decal_spd
image_angle += rot
image_xscale = lerp(image_xscale, scale, 0.05)
image_yscale = image_xscale

if fade = 0 {
image_alpha -= 0.002
} else image_alpha -= fade

if image_alpha <= 0
{
instance_destroy()
}

