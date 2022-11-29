if image_alpha < 1 and fade_out = false
{
image_alpha += 0.02
}

if fade_out = true
{
image_alpha -= 0.05
}

if image_alpha < 0 instance_destroy()

x += (2.3 - (image_alpha * 1.8)) * 4

