if instance_number(objGlobalControl) = 1
{
    if seconds = 60
    {
    minutes += 1
    seconds = 0
    }
    
    if minutes = 60
    {
    minutes = 0
    hours += 1
    }
    
    if hours = 24
    {
    days += 1
    hours = 0
    }
    
    if seconds < 10
    {
    seconds_string = "0" + string(seconds)
    }
    else
    {
    seconds_string = string(seconds)
    }
    
    if minutes < 10
    {
    minutes_string = "0" + string(minutes)
    }
    else
    {
    minutes_string = string(minutes)
    }
    
    if hours < 10
    {
    hours_string = "0" + string(hours)
    }
    else
    {
    hours_string = string(hours)
    }
}

