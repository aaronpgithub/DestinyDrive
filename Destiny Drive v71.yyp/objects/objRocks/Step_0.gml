if fade = true
{
image_alpha -= 0.1
}

if image_alpha <= 0
{
instance_destroy()
}

instance_create(x + random_range(-3, 3), y + random_range(-3, 3), objThickSmoke)

