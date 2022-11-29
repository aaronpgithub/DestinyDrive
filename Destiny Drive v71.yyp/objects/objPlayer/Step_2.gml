#region item tests
if ds_map_exists(global.item_map, "ess_anxi")
{
	if !mouse_check_button(mb_left) 
	{
		ds_map_set(global.item_map, "ess_anxi", global.hp)
		
		if global.frame_time % 180 = 0 and global.hp > 0 and global.hp < max_hp and max_hp > 0 global.hp++
	}
}

if ds_map_exists(global.item_map, "battery_shield")
{
    if global.hp < max_hp and global.use_itm[1] > 0
    {
    global.hp += 1
    global.use_itm[1] -= 1
    }
}

if ds_map_exists(global.item_map, "fridge")
{
    if ds_map_find_value(global.item_map, "fridge") = 1
    {
        if instance_exists(objEnemyParent)
        {
            with(instance_find(objEnemyParent, irandom(instance_number(objEnemyParent) - 1)))
            {
            freeze = true
            }
            
            ds_map_replace(global.item_map, "fridge", 0)
        }
    }
}
#endregion

var testlength, testangle;
testlength = point_distance(x, y, xprevious, yprevious)
if testlength > 10 {
	testlength = floor(testlength / 8)
	testangle = point_direction(x, y, xprevious, yprevious)

	if ds_map_exists(global.item_map, "bad_connection") or rest_jump = true testangle += 180

	for(var dopd = 0; dopd <= testlength; dopd++) {
		var pdire = point_direction(xprevious, yprevious, x, y)
		var ctes1;
		ctes1 = collision_circle(xprevious + lengthdir_x(dopd * 8, testangle), yprevious + lengthdir_y(dopd * 8, testangle), 2 * image_xscale, objEnemyBulletParent, true, true)

		if ctes1 != noone {
			player_bullet_collision(ctes1.id)
		}
	}
	
	rest_jump = false
}