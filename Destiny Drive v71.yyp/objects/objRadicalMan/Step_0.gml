if alarm[11] <= 0
{
	#region //girl and disco ball creation
	
	if !instance_exists(objGirl) {
		var yarea = road_y_min;

		repeat(4) {
			repeat(38) { //38
				var gerl = instance_create(-20 + random_range(-10, 10), yarea + random(48), objGirl)
		
				with(gerl) {
					xps = random_range(-10, 30)
					xps -= random(xps)
					lep = random_range(0.005, 0.01)
					myxoff += random(6)
				}
			}
			yarea += 48
		}
	}

	if !instance_exists(objDiscoBall) {
		var xvap = 85

		repeat(3) {
				instance_create(xvap, -60, objDiscoBall)
				xvap += 85
		}
	}
	#endregion
	
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = room_speed * 10
    attack_check(4)
	if attack_choice = 3 alarm[0] = room_speed * 15
	if attack_choice = 4 alarm[0] = room_speed * 6
    }
    
    //chainsaw
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 20
    }
    
    //Laser
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 30
	cool_time = random_range(0.5, 1)
    }
    
    //crow
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
    
    //dogs
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 12
    }
}
else
{
    var i;
    
    for(i = 0; i <= 10; i++)
    {
    alarm[i] = -1
    }
}

