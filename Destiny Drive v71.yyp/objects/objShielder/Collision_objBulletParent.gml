if sprite_index = sprShielder
{
    if other.dont_dest = false or other.does_pierce = false and other.object_index != objCannonball
    {
        with(other)
        {
        instance_destroy()
        }
    }
exit;
}
else
{
event_inherited()
}

