hp -= other.damage

with(other)
{
    if dont_dest = false
    {
    instance_destroy()
    damage = 0
    }
    else
    {
    damage = 0
    }
}

