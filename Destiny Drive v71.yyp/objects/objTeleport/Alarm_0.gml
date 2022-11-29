if objGameControl.level_complete_type = "transition" exit;

globalvar tel_col, depth_var;
var inst = instance_create(x, y, objTeleport);

depth_var = depth - 1

	if color = c_gray
	{
	tel_col = c_white
	}
	else
	{
	tel_col = c_gray
	}

with(inst)
{
color = tel_col
depth = depth_var
}



