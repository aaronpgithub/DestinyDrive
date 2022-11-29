if slow = true
{
    if spd > 0.4
    {
    spd -= 0.2
    }
}

y -= spd

if spd <= 0.4
{
image_alpha -= 0.1
}

if image_alpha <= 0
{
instance_destroy()
}

