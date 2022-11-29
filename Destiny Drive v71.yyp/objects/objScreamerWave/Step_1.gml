event_inherited()

image_xscale += 0.05
image_yscale = image_xscale

pierce = true

if image_xscale > xscale_cap
{
image_alpha -= subtract
}

if image_alpha <= 0 instance_destroy()

