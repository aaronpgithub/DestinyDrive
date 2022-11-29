function time_system() {
	if local_seconds = 60
	{
	local_minutes += 1
	local_seconds = 0
	}

	if local_seconds < 10
	{
	local_seconds_str = "0" + string(local_seconds)
	}
	else
	{
	local_seconds_str = string(local_seconds)
	}

	if local_minutes < 10
	{
	local_minutes_str = "0" + string(local_minutes)
	}
	else
	{
	local_minutes_str = string(local_minutes)
	}



}
