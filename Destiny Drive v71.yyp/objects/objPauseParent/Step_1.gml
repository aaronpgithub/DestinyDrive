if object_index != objEntpMedallionControl and object_index != objEntpMedallionArrow and object_index != objEntpMedallionButton
{
    if !instance_exists(objPauseControl)
    {
        if object_index != objFade and object_index != objWindowControl
        {
            if object_index = objPauseItem
            {
                if global.hp > 0
                {
                instance_destroy()
                }
            }
            else
            {
            instance_destroy()
            }
        }
    }
}

if instance_exists(objPauseMenuMousePoint)
{
    if object_index != objFade and object_index != objWindowControl and object_index != objPauseControl and object_index != objPauseMenuMousePoint
    {
    image_alpha = 0
    }
}
else
{
    if instance_exists(objPauseMenuOptions)
    {
        if objPauseMenuOptions.options = true
        {
            if object_index != objFade and object_index != objWindowControl and object_index != objPauseControl and object_index != objSliderGrab and object_index != objSlider
            {
            image_alpha = 0
            }
        }   
        else
        {
            if object_index != objSliderGrab and object_index != objSlider
            {
            image_alpha = 1
            }
        }
    }
}



