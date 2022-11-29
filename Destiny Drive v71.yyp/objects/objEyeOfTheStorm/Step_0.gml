lightindex += 0.1

with(objEnemyBulletParent) {
	if sprite_index = sprSimpleLightning {
		image_index = objEyeOfTheStorm.lightindex
	}
}

cloud_t += cloud_t_speed
clout_t = cloud_t mod 360

cloud_pos_x = 90 + (sin(degtorad(cloud_t)) * 70)
cloud_pos_y = road_y_min + 90 + (cos(degtorad(-cloud_t)) * 70)

if alarm[11] <= 0
{
    if player_too_close(warning_x, 90)
    {
			var blammph = instance_create(x - 15, y - 10, objEnemyBullet)
    
	        with(blammph)
	        {
	        angle = random(360)
	        spd = 4 * global.enemy_spd
	        damage = 1
	        image_angle = angle
	        }
	}

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
	wait_amount = 1
    alarm[0] = room_speed * 10
    attack_check(4)
	light_random = random(360)
	
	if attack_choice = 4 wait_amount = 4 //cloud creatures
    }
    
    //lightning
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 3
    }
    
    //Rain
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 20
    }
    
    //Tornado
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
    
    //Cloud Creature
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 5
    }
} else {
	set_all_alarms(0, 10, 60)
}
