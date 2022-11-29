if dis = false
{
    if image_xscale < 1
    {
    image_xscale += 0.1
    }
    
    if image_alpha < 1
    {
    image_alpha += 0.1
    }
}
else
{
    image_alpha -= 0.1
    
    if image_alpha <= 0
    {
    instance_destroy()
    }
}

