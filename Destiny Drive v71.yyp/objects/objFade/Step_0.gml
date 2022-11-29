if room = rmMenu
{
    if keep_fading = false
    {
    image_alpha += 0.05
    }
    else
    {
    image_alpha -= 0.05
    }
}
else
{
    if !instance_exists(objRestart) and !instance_exists(objPauseMenuRestart) and !instance_exists(objPauseMenuQuit)
    {
    image_alpha -= 0.05
    }
    else
    {
        if instance_exists(objRestart)
        {
            if objRestart.image_index = 0 and objBackToMenu.image_index = 0
            {
            image_alpha -= 0.05
            }
            else
            {
            image_alpha += 0.05
            }
        }
        else //If you paused instead of died
        {
            if instance_exists(objPauseMenuRestart) and instance_exists(objPauseMenuQuit)
            {
                if objPauseMenuRestart.image_index > 0
                {
                image_alpha += 0.05
                }
                
                if objPauseMenuQuit.image_index > 0
                {
                image_alpha += 0.05
                }
            }
        }
    }
}

if image_alpha > 1
{
    if room = rmMenu
    {
    room = rmGame
    }

    if (room = rmGame or room = rmPractice) and instance_exists(objBackToMenu)
    {
        if objBackToMenu.image_index = 1
        {
        room = rmMenu
        }
        
        if objRestart.image_index = 1
        {
        room_restart();
        }
    }
    else //In the 'objPauseControl' creation
    {
        if instance_exists(objPauseMenuRestart) and instance_exists(objPauseMenuQuit)
        {
            if objPauseMenuRestart.image_index > 0
            {
            room_restart();
            }
            
            if objPauseMenuQuit.image_index > 0
            {
            room = rmMenu
            }
        }
    }
}

if image_alpha < 0
{
instance_destroy()
}


