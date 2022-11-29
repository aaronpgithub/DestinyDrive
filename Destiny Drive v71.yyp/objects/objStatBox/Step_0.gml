if !instance_exists(objPauseControl)
{
    instance_destroy()
}
else
{
    if objPauseMenuOptions.options = true or instance_exists(objPauseMenuMousePoint)
    {
    image_alpha = 0
    }
    else
    {
    image_alpha = 1
    }
}

