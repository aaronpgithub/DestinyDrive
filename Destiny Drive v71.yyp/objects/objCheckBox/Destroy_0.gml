if image_index = 1
{
    switch(changes)
    {
    case "FULLSCREEN":
    window_set_fullscreen(true)
    objWindowControl.alarm[0] = 2
    break;
    case "CURSOR VISIBLE":
    window_set_cursor(cr_arrow)
    break;
    }
}
else
{
    switch(changes)
    {
    case "FULLSCREEN":
    window_set_fullscreen(false)
    objWindowControl.alarm[0] = 10
    break;
    case "CURSOR VISIBLE":
    window_set_cursor(cr_none)
    break;
    }
}

