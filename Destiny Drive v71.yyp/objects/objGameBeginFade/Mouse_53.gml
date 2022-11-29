if phase = "name"
{
    with(objCreatedBy)
    {
    instance_destroy()
    }
exit;
}

if phase = "logo"
{
    with(objTitleD)
    {
    instance_destroy()
    }
}

