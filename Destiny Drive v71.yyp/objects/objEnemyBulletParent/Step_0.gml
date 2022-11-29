if spawn = true
{
	if sprite_index = sprEnemyBulletMedium bullet_color = c_red
    if ds_map_exists(global.item_map, "3d_glasses")
    {
        if is_parent = true
        {
            var t = instance_copy(false)
            
            with(t)
            {
            angle += random_range(-4, 4)
            is_parent = false
            }
            spawn = false
        }
    }
}

if spd == 0 and no_move_destroy == true and global.enemy_spd != 0
	instance_destroy()

	//Fix this. Make a new bullet for smoker debris, this is unoptimized...
    if deb = false {
    if special_move = false motion_set(angle, spd * global.enemy_spd)
    }
    else {
    bullet_debris()
    }

if x < -10 or y < -10 or x > room_width + 10 or y > room_height + 10
{
if wrap = false and bounce = false and outside_special = false instance_destroy()
}

if road_bounce = true {
	if y < road_y_min or y > road_y_max {
	angle = -(angle)
		if y < road_y_min y = road_y_min + abs(spd)
		if y > road_y_max y = road_y_max - abs(spd)
	}
}

if bounce = true {
	if x <= 0 {
	spd = -(spd)
    angle = -(angle)
    image_angle = angle
	x += sprite_width / 2
	}
}