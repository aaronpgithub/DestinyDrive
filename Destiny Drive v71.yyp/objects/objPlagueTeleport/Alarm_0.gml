if objGameControl.level_complete_type = "transition" exit;

globalvar tel_col, depth_var;
var inst = instance_create(x, y, objPlagueTeleport);

depth_var = depth - 1

	if color = c_black
	{
	tel_col = c_white
	}
	else
	{
	tel_col = c_black
	}

with(inst)
{
color = tel_col
depth = depth_var
}



