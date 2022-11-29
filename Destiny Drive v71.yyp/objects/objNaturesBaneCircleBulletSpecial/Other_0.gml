if instance_exists(objNaturesBane)
{
    if spd < 0 or objNaturesBane.attack_choice != 3
    {
    instance_destroy()
    }
}
else
{
instance_destroy()
}

