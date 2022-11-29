function weapon_initiate() {
	charge_weapon = false	//charge weapons allow you to hold down mouse to gain damage.
	charge_max = 1
	sniper = false			//sniper var makes a laser sight come out of the gun, nothing else.
	heavy_bolt = false		
	antsy = false
	scope = false
	semi_auto = false
	tempo = false
	alarm[0] = 1

	switch(weapon) {
	    case "twin":
	    ang_offset = 10
	    break;
	    case "hand_eagle":
	    semi_auto = true
	    break;
	    case "m17":
	    semi_auto = true
	    break;
	    case "burst":
	    semi_auto = true
	    break;
	    case "wave_gun":
	    angle_add_weapon = 3
	    break;
	    case "ak_pistol":
	    semi_auto = true
	    break;
	    case "m19":
	    charge_max = 2
	    charge_speed = 0.05
	    charge_weapon = true
	    break;
	    case "m_rifle":
	    semi_auto = true
	    break;
	    case "s_rifle":
	    sniper = true
	    break;
	    case "b_hose":
	    angle_add_weapon = 4
	    break;
	    case "bounce":
	    ang_offset = 14
	    break;
	    case "ak_smg":
	    semi_auto = true
	    break;
	    case "m20":
	    charge_max = 2
	    charge_speed = 0.025
	    charge_weapon = true
	    break;
	    case "p_burst":
	    charge_speed = 0.025
	    charge_weapon = true
	    break;
	    case "h_sniper":
	    semi_auto = true
	    heavy_bolt = true
	    break;
	    case "ak_rifle":
	    semi_auto = true
	    break;
	    case "m200":
	    charge_max = 2
	    charge_speed = 0.01
	    charge_weapon = true
	    break;
		case "s_burst":
	    charge_speed = 0.025
	    charge_weapon = true
	    break;
	    case "s_scope":
	    semi_auto = true
	    charge_max = 2
	    charge_speed = 0.025
	    charge_weapon = true
	    sniper = true
	    scope = true
	    break;
	    case "ak_spray":
	    semi_auto = true
	    break;
	    case "m400":
	    charge_max = 2
	    charge_speed = 0.01
	    charge_weapon = true
	    break;
	    case "u_burst":
	    charge_speed = 0.025
	    charge_weapon = true
	    break;
	    case "l_rifle":
	    sniper = true
	    antsy = true
	    break;
	    case "ak_shot":
	    semi_auto = true
	    break;
	    case "mblood":
	    charge_max = 2
	    charge_speed = 0.01
	    charge_weapon = true
	    break;
	    case "tempo":
	    semi_auto = true
	    tempo = true
	    break;
	    case "h_burst":
	    charge_speed = 0.25
	    charge_max = 999999999
	    charge_weapon = true
	    break;
	    case "storm_burst":
	    semi_auto = true
	    break;
	    case "the_pro":
	    semi_auto = true
	    charge_max = 2
	    charge_speed = 0.025
	    charge_weapon = true
	    heavy_bolt = true
	    antsy = true
	    sniper = true
	    scope = true
	    break;
	    case "rotate":
	    angle_add_weapon = 3
	    break;
	    case "ak_grenade":
	    semi_auto = true
	    break;
	    case "my_little":
	    semi_auto = true
	    break;
	}



}
