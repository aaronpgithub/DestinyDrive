/// @description Insert description here
// You can write your code in this editor

//if enemy select menu is selected, the menu is pushed but alpha stays at 1

if in_menu = true and objPracticeEnemySelectMenu.selected = false {
	lerp_menu = lerp(lerp_menu, 90, global.p_lerp_spd)											//Opening menu
} else {
	lerp_menu = lerp(lerp_menu, 0, global.p_lerp_spd)											//Closing menu
	
	if delete_attack > 0 {
		practice_attack_dest_superscript()
		delete_attack -= 1
	} else {
		if special_boss_delete != "" special_boss_delete = ""
	}
}

if instance_exists(objGameControl) {
	global.current_level = settings_array[0, 1]
}

menu_x = round(lerp_menu - 90)						// X position

if objPracticeEnemySelectMenu.selected = false {
	menu_alpha = (lerp_menu / 90)					// 0-1 alpha
} else {
	if in_menu = true {
		menu_alpha = 1
	} else menu_alpha = (lerp_menu / 90)
}

#region getting bosses based on level
		var b_ind = 0;
	switch(settings_array[0, 1]) {
				case "wasteland":
		boss_add_to_selection(b_ind++, "Mutt n' Friends", sprMuttFull, objBanditCaravan)
		boss_add_to_selection(b_ind++, "King Bubbs", sprKingBubbs, objKingBubbs)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "Wasteland Bully", sprWastelandBully, objWastelandBully)
		boss_add_to_selection(b_ind++, "Boar Herder", sprBoarHerder, objBoarHerder)
		boss_add_to_selection(b_ind++, "Neighborhood Gang", sprNeighborhoodGangBoy1, objNeighborhoodGang)
		break;
				case "swamp":
		boss_add_to_selection(b_ind++, "Spooky Scott", sprSpookyScott, objSpookyScott)
		boss_add_to_selection(b_ind++, "Parasite Worm", sprParasiteWormMouth, objParasiteWorm)
		boss_add_to_selection(b_ind++, "The Plague", sprThePlague, objThePlague)
		boss_add_to_selection(b_ind++, "Flying Fish", sprFlyingFish, objFlyingFish)
		boss_add_to_selection(b_ind++, "The Mutant", sprTheMutant, objTheMutantTank)
		boss_add_to_selection(b_ind++, "Eye of the Storm", sprEyeOfTheStorm, objEyeOfTheStorm)
		break;
				case "forest":
		boss_add_to_selection(b_ind++, "Nature's Bane", sprNaturesBane, objNaturesBane)
		boss_add_to_selection(b_ind++, "The Illusion", sprCarriageofIllusion, objCarriageOfIllusion)
		boss_add_to_selection(b_ind++, "Pixie Storm", sprPixie, objPixieStorm)
		boss_add_to_selection(b_ind++, "The Hunter", sprTheHunter, objTheHunter)
		boss_add_to_selection(b_ind++, "Horror Apparition", sprHorrorApparition, objHorrorApparition)
		boss_add_to_selection(b_ind++, "THIRD MINIBOSS", sprThirdForestMiniboss, objThirdForestMiniboss)
		break;
				case "volcano":
		boss_add_to_selection(b_ind++, "Queen of Flies", sprQueenOfFlies, objQueenOfFlies)
		boss_add_to_selection(b_ind++, "Gorgan", sprGorgan, objGorgan)
		boss_add_to_selection(b_ind++, "Tank of Flame", sprTankOfFlame, objTankOfFlame)
		boss_add_to_selection(b_ind++, "Fire Mage", sprFireMage, objFireMage)
		boss_add_to_selection(b_ind++, "Dead Wood", sprNightmare, objDeadWood)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "snow":
		boss_add_to_selection(b_ind++, "Anarchist of Time", sprAnarchistOfTime, objAnarchistOfTime)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "Death Gang", sprDeathGangBoy1, objDeathGang)
		boss_add_to_selection(b_ind++, "??????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "city":
		boss_add_to_selection(b_ind++, "Military Weaponry", sprMilitaryWeaponry, objMilitaryWeaponry)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "Radical Man", sprCoolMan, objRadicalMan)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "ocean":
		boss_add_to_selection(b_ind++, "King Borbs", sprKingBorbs, objKingBorbs)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "Regular Fish", sprRegularFish, objRegularFish)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "temple":
		boss_add_to_selection(b_ind++, "Tomb of Shri", sprTombOfShri, objTombOfShri)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "Pyramid", sprPyramid, objPyramid)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "edge":
		boss_add_to_selection(b_ind++, "The Glitch", sprTheGlitch, objTheGlitch)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "Spirit Storm", sprSpiritHappy, objSpiritStorm)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "killroom":
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "tv":
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "hell":
		boss_add_to_selection(b_ind++, "Satan", sprSatan, objSatan)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
				case "final boss":
		boss_add_to_selection(b_ind++, "Final Boss", sprFinalBoss, objTheFinalBoss)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		boss_add_to_selection(b_ind++, "?????", 0, 0)
		break;
	}
#endregion