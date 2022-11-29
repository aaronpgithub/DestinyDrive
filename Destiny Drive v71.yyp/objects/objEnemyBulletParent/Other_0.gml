if bounce = false
{
    if wrap = false
    {
    if outside_special = false instance_destroy()
    }
    else
    {
    x = 320
    wrap = false
    }
}
else
{
    if x > 150 {
    if outside_special = false instance_destroy()
    }
}

