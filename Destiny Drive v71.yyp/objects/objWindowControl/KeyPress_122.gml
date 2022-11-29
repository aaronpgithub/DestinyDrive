if !instance_exists(objPauseControl)
{
    if window_get_fullscreen() = false
    {
    window_set_fullscreen(true)
    alarm[0] = 10
    }
    else
    {
    window_set_fullscreen(false)
    alarm[0] = 10
    }
}

