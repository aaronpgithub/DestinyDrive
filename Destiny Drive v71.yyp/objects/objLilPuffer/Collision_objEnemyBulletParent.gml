if image_index = 1 and bullets_ate > 0
{
    with(other)
    {
        instance_destroy()
    }
    
    bullets_ate -= 1
}

if bullets_ate <= 0 visible = false


