if alarm[11] <= 0
{
		forest_t += 2
		forest_t = forest_t mod 360
		
		pos_y = ystart + (45 * sin(degtorad(forest_t)))

    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
	wait_amount = 1
	
    alarm[0] = room_speed * 10
    attack_check(4)
    }
	
	//dont need any attack checks
} else {
	alarm[2] = 20
}