if objWindowControl.alarm[0] <= 0 and global.hp > 0
{
    if !instance_exists(objPauseControl) and !instance_exists(objFade)
    {
    instance_create(0, 0, objPauseControl)
    
        globalvar paused;
        paused = 0;
        repeat(6) {
            var dorpr = instance_create(64 + (26.66666666666667 * (paused + 1)), -32, objPauseLetter)
            
                with(dorpr) {
                image_index = paused
                alarm[0] = paused * 2
                }
            paused++
        }
    
    instance_create((room_width / 2) + 70, 100, objCheckBox)
    instance_create((room_width / 2) + 70, 140, objCheckBox)
    instance_create((room_width / 2) - 100, 200, objSlider)
    }
    else
    {
        with(objPauseControl)
        {
        instance_destroy()
        }
        
        with(objPauseLetter)
        {
        instance_destroy()
        }
    }
}

