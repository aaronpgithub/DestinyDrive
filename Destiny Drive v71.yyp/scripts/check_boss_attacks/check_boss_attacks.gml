///check and change name of attacks
function check_boss_attacks() {

	var normal_button_placement = true;

	ds_list_clear(boss_attacks)

	switch(settings_array[1, 1]) {
		case objBanditCaravan:
		boss_phases = 2
		if settings_array[1, 2] = 1 {
			ds_list_add(boss_attacks, "Rotating Shot", "Bullet Spray", "Funnel", "Alternate", "Blast", "Focus", "Bullet Rain")
		} else ds_list_add(boss_attacks, "Rotating Shot", "Bullet Spray", "Funnel", "Alternate", "Blast")
		break;
		case objKingBubbs:
		boss_phases = 2
		ds_list_add(boss_attacks, "Starburst", "Walls", "Knights", "Grapes", "Burp", "Orange Wiz", "Purple Wiz", "Green Wiz")
		break;
		case objWastelandBully:
		boss_phases = 1
		ds_list_add(boss_attacks, "Inaccurate Shots", "Chain Heads", "Angry Potion", "Whistle")
		break;
		case objBoarHerder:
		boss_phases = 1
		ds_list_add(boss_attacks, "Pistol", "Shotgun", "Rifle")
		break;
		case objNeighborhoodGang:
		boss_phases = 1
		ds_list_add(boss_attacks, "Pistoleer ALIVE", "Shotgunner ALIVE", "Rifleboy ALIVE")
		break;
		case objQueenOfFlies:
		break;
		case objThePlague:
		boss_phases = 3
		if settings_array[1, 2] = 2 {
			ds_list_add(boss_attacks, "Circle Walls Outward", "Circle Walls Inward", "Spinning Cross", "Spew Outward", "Spew Inward", "Blasts")
		} else ds_list_add(boss_attacks, "Bullet Portals", "Spiral Portals", "Pukers", "Rocket Portals")
		break;
		case objParasiteWorm:
		boss_phases = 2
		normal_button_placement = false
	
		if settings_array[1, 2] = 1 {
			place_attack_buttons(0, 4)
			ds_list_add(boss_attacks, "PARASITE WORM ATTACKS", "Mini Burps", "Wavy Bullets", "Flies", "Laser Spray", "MONSTER ATTACKS", "Howl", "Worm Bubbles 1", "Worm Bubbles 2", "Flying Worm", "Fat Flying Worm", "Worm Followers")
		} else {
			place_attack_buttons(0, 3)
			ds_list_add(boss_attacks, "PARASITE WORM ATTACKS", "Mini Burps", "Wavy Bullets", "Flies", "MONSTER ATTACKS", "Howl", "Worm Bubbles 1", "Worm Bubbles 2", "Flying Worm", "Fat Flying Worm")
		}
		break;
		case objTheMutantTank:
		boss_phases = 1
		ds_list_add(boss_attacks, "Smart Bomb", "Spin Flak", "Tank Mortars", "Spray")
		break;
		case objEyeOfTheStorm:
		boss_phases = 1
		ds_list_add(boss_attacks, "Cloud Lightning", "Rain Waves", "Lightning Rains Down", "Cloud Creatures")
		break;
		case objFlyingFish:
		boss_phases = 1
		ds_list_add(boss_attacks, "Bouncy Line", "Bubble Bursts", "Rebound Bubble Bursts", "Zig Zag Bullets", "Wavy Walls")
		break;
		case objCarriageOfIllusion:
		boss_phases = 2
		if settings_array[1, 2] = 1 {
			ds_list_add(boss_attacks, "Aimed Walls", "Bullet Grid", "Circle Shrink", "Bouncy Bullet Mist")
		} else {
			ds_list_add(boss_attacks, "Attracted Walls", "Circle Walls", "Sneaky Wall", "Mini Spiral Guys", "Circle Blooms")
		}
		break;
		case objSpookyScott:
		boss_phases = 2
		if settings_array[1, 2] = 1 {
			ds_list_add(boss_attacks, "Scream", "Triple Ghost", "Buddy Ghost", "Squid Ghost", "WAH!", "Invisible Walls", "Zig Zag Rain")
		} else ds_list_add(boss_attacks, "Scream", "Triple Ghost", "Buddy Ghost", "Swamp Rat Ghost", "BOO!", "Invisible Walls")
		break;
		case objTheHunter:
		boss_phases = 1
		ds_list_add(boss_attacks, "Shotgun Blasts", "Birthing Bullets", "Crossbow", "Holy Water")
		break;
		case objHorrorApparition:
		boss_phases = 1
		ds_list_add(boss_attacks, "Spiral", "Alternating Lasers", "Screamers", "Blinking Walls")
		break;
		case objThirdForestMiniboss:
		boss_phases = 1
		ds_list_add(boss_attacks, "Squares", "Walls", "Follow Player", "Tunnel")
		break;
		case objGorgan:
		break;
		case objTankOfFlame:
		break;
		case objFireMage:
		break;
		case objDeadWood:
		break;
	}

	if normal_button_placement = true {
		place_attack_buttons()
	}

	with(objPracticeAttackSelectMenuButton) {
		//Making sure buttons dissapear if there are non-attack texts in the list
		if menu_button_type_offset > objPracticeControl.max_boss_button_offset objPracticeControl.max_boss_button_offset = menu_button_type_offset
	}


}
