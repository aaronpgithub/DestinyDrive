if objPauseMenuOptions.options = false
{

    if global.wave = global.wave_max - 1 {   
    instance_destroy()
    }

    if !instance_exists(objPauseMenuMousePoint)
    {
    pause = true
    instance_create(global.player_x, global.player_y, objPauseMenuMousePoint)
    }
    else
    {
    pause = false
        with(objPauseMenuMousePoint)
        {
        instance_destroy()
        }
    }
}
else
{
objPauseMenuOptions.options = false
}

