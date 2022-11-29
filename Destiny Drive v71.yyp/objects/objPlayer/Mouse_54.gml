	if global.use_itm[0] = 27 { //Essence of Rest
	rest_x = mouse_x
	rest_y = mouse_y
	}

if global.use_itm[0] != 21
{	
    if (global.use_itm[1] = global.use_itm[2] or global.use_itm[2] = -10) and global.hp > 0
    {
        if alarm[2] < 0 
        {
        use_item_activate(2, global.use_itm[0])
        alarm_2_max = alarm[2]
        use_itm_used = global.use_itm[0]
        }
        else
        {
        use_item_activate(9, global.use_itm[0])
        alarm_9_max = alarm[9]
        use_itm_used2 = global.use_itm[0]
        }
    }
}
else
{
    if global.hp > 0
    {
        if alarm[2] < 0 
        {
        use_item_activate(2, global.use_itm[0])
        alarm_2_max = alarm[2]
        use_itm_used = global.use_itm[0]
        }
        else
        {
        use_item_activate(9, global.use_itm[0])
        alarm_9_max = alarm[9]
        use_itm_used2 = global.use_itm[0]
        }
    }
}

