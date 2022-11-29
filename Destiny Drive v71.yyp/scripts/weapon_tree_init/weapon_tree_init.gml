function weapon_tree_init() {
	for(var t = 0; t <= 10; t++) {
	    for(var p = 0; p <= 20; p++) {
	    global.w_tree[t, p] = ""
	    }
	}

	var g = 0;

	//"hyper_burst, 2, 3, 4"
	//hyper_burst - sets weapon to that
	//2,3,4 - the skills above that this one can go to

	switch(global.player) {
		case sprPlayer:
		//Wasteland
		global.w_tree[g, 0] = "pistol, 0, 1"
		g++ //1 Swamp
		global.w_tree[g, 0] = "revolver, 0, 1"
		global.w_tree[g, 1] = "smg, 2, 3"
		g++ //2 Forest
		global.w_tree[g, 0] = "hand_eagle, 0, 1"
		global.w_tree[g, 1] = "rifle, 1, 2"
		global.w_tree[g, 2] = "tommy, 3, 4"
		global.w_tree[g, 3] = "twin, 4, 5"
		g++ //3 Volcano
		global.w_tree[g, 0] = "m17, 0, 1"
		global.w_tree[g, 1] = "burst, 1, 2"
		global.w_tree[g, 2] = "h_rifle, 2, 3"
		global.w_tree[g, 3] = "wave_gun, 4, 5"
		global.w_tree[g, 4] = "ak_pistol, 5, 6"
		global.w_tree[g, 5] = "triple, 6, 7"
		g++ //4 Snow
		global.w_tree[g, 0] = "m19, 0, 1"
		global.w_tree[g, 1] = "m_rifle, 0, 1"
		global.w_tree[g, 2] = "s_issue, 2, 3"
		global.w_tree[g, 3] = "s_rifle, 2, 3"
		global.w_tree[g, 4] = "b_hose, 4, 5"
		global.w_tree[g, 5] = "bounce, 4, 5"
		global.w_tree[g, 6] = "ak_smg, 6, 7"
		global.w_tree[g, 7] = "quad, 6, 7"
		g++ //5 City
		global.w_tree[g, 0] = "m20, 0, 1"
		global.w_tree[g, 1] = "p_burst, 0, 1"
		global.w_tree[g, 2] = "ss_issue, 2, 3"
		global.w_tree[g, 3] = "h_sniper, 2, 3"
		global.w_tree[g, 4] = "gatling, 4, 5"
		global.w_tree[g, 5] = "d_bounce, 4, 5"
		global.w_tree[g, 6] = "ak_rifle, 6, 7"
		global.w_tree[g, 7] = "arrow, 6, 7"
		g++ //6 Ocean
		global.w_tree[g, 0] = "m200, 0, 1"
		global.w_tree[g, 1] = "s_burst, 0, 1"
		global.w_tree[g, 2] = "vs_issue, 2, 3"
		global.w_tree[g, 3] = "s_scope, 2, 3"
		global.w_tree[g, 4] = "vortex, 4, 5"
		global.w_tree[g, 5] = "c_control, 4, 5"
		global.w_tree[g, 6] = "ak_spray, 6, 7"
		global.w_tree[g, 7] = "cube, 6, 7"
		g++ //7 Temple
		global.w_tree[g, 0] = "m400, 0, 1"
		global.w_tree[g, 1] = "u_burst, 2, 3"
		global.w_tree[g, 2] = "ats_issue, 4, 5"
		global.w_tree[g, 3] = "l_rifle, 6, 7"
		global.w_tree[g, 4] = "fury, 8, 9"
		global.w_tree[g, 5] = "dc_control, 10, 11"
		global.w_tree[g, 6] = "ak_shot, 12, 13"
		global.w_tree[g, 7] = "circle, 14, 15"
		g++ //8 Edge
		global.w_tree[g, 0] = "mblood, 0, 0"
		global.w_tree[g, 1] = "tempo, 0, 0"
		global.w_tree[g, 2] = "h_burst, 0, 0"
		global.w_tree[g, 3] = "storm_burst, 0, 0"
		global.w_tree[g, 4] = "tms_rifle, 0, 0"
		global.w_tree[g, 5] = "momentum, 0, 0"
		global.w_tree[g, 6] = "the_pro, 0, 0"
		global.w_tree[g, 7] = "risk, 0, 0"
		global.w_tree[g, 8] = "smart, 0, 0"
		global.w_tree[g, 9] = "spirit, 0, 0"
		global.w_tree[g, 10] = "rotate, 0, 0"
		global.w_tree[g, 11] = "predictor, 0, 0"
		global.w_tree[g, 12] = "ak_grenade, 0, 0"
		global.w_tree[g, 13] = "my_little, 0, 0"
		global.w_tree[g, 14] = "powerhouse, 0, 0"
		global.w_tree[g, 15] = "infinite_gun, 0, 0"
		break;
	
		case sprPlayerSpiritOfDespair:
		//Wasteland
		global.w_tree[g, 0] = "bolt, 0, 1"
		g++ //1 Swamp
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //2 Forest
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //3 Volcano
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //4 Snow
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //5 City
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //6 Ocean
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //7 Temple
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		g++ //8 Edge
		global.w_tree[g, 0] = "bolt_a, 0, 1"
		global.w_tree[g, 1] = "bolt_s, 0, 1"
		break;
	}



}
