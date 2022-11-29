if !instance_exists(objPauseControl)
{
    if global.hp > 0
    {
    instance_destroy()
    }
    else
    {
    image_alpha = 1
    }
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

