if instance_exists(objPlayer)
{
    if !window_has_focus() and !instance_exists(objPauseControl) and global.hp > 0
    {
        if room = rmGame
        {
            if !instance_exists(objPauseControl) and !instance_exists(objFade)
            {
            instance_create(0, 0, objPauseControl)
            instance_create(room_width / 2, -100, objPausedText)
            }
            
            instance_create((room_width / 2) + 70, 100, objCheckBox)
            instance_create((room_width / 2) + 70, 140, objCheckBox)
            instance_create((room_width / 2) - 100, 200, objSlider)
        }
    }
}