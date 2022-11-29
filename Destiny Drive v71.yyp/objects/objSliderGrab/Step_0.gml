if objPauseMenuOptions.options = true
{
image_alpha = 1
}
else
{
image_alpha = 0
}

global.vol_percent = 1 - (0.01 * (x_var - x))

//audio_set_master_gain(0, global.vol_percent)

if follow
{
	x = mouse_x;
}

if global.vol_percent < 0 and x < x_var - 101
{
	x = x_var - 101;
	follow = false;
}

if global.vol_percent > 1 and x > x_var
{
x = x_var
follow = false
}

