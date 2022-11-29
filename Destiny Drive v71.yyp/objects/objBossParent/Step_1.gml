if hp <= 0
{
    with(objEnemyParent)
    {
        if object_index != objBossParent and object_index != objQueenOfFlies and object_index != objUFO and object_index != objNeighborhoodGang
        {
        instance_destroy()
        }
    }
}

if sprite_exists(sprite_index) {
	mid_x = x - sprite_get_width(sprite_index) / 2
	mid_y = y - sprite_get_height(sprite_index) / 2
}

if warning_timer > 0 warning_timer--

depth = -(y)

if alarm[11] <= 0
{
    if object_index != objMiniCaravan and object_index != objBoarHerder and object_index != objQueenOfFliesFastMiniboss and object_index != objParasiteWorm
    {
    x = lerp(x, pos_x, 0.06)
    y = lerp(y, pos_y, 0.06)
    }
}
else
{
    if global.hp <= 0
    {
    x += 9
    }
    else
    {
        if object_index != objParasiteWorm
        {
            if object_index != objSatan
            {
            x -= 0.8
            }
            else
            {
            y -= 0.2
            }
        }
    }
}

if alarm[11] = room_speed * 2
{
instance_create(-200, 60, objBossText)
}

if hp > max_hp
{
hp = max_hp
}

if hp <= 0
{
        with(objEnemyBulletParent)
        {
        instance_destroy()
        }
        
        if object_index = objWastelandBully
        {
        sprite_index = sprWastelandBullyDead
        }
        else
        {
        instance_destroy()
        }
}

enemy_type_checker()

//transition_done starts as true
//in the boss code, if hp is less than milestone and transition_done is true, set timer
//sub from timer and set transition_done to false
//once timer is less than 0, reset and add a transition
if transition_timer > 0 {
	transition_timer--
	transition_done = false
	invincible = true
} else {
	if transition_done = false {
		transition_amount++
		transition_done = true
		invincible = false
	}
}

if global.practice = true {
	transition_amount = objPracticeControl.settings_array[1, 2]
}