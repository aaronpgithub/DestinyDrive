///@param *special
function practice_attack_dest_superscript() {
	//destroy all bullets and bullet related things
	var special = false;
	if objPracticeControl.special_boss_delete != "" special = true

	dest_ex(objEnemyBulletParent)

	dest_ex(objGrape)
	dest_ex(objGrapeCarrier)

	dest_ex(objKingBubbsWizard)
	dest_ex(objWizardCircle)

	dest_ex(objThePlagueBulletPortal)
	dest_ex(objThePlagueBulletPortalBlast)
	dest_ex(objThePlagueBulletPortalRocket)
	dest_ex(objThePlaguePuker)

	//parasite worm 
	if special = true {
		var rep = 0;
		repeat(string_length(objPracticeControl.special_boss_delete)) {
			switch(string_char_at(objPracticeControl.special_boss_delete, rep)) {
			case "m":
				dest_ex(objParasiteWormHowl)
				dest_ex(objParasiteWormBuddy)
				dest_ex(objParasiteWormFlyingWorm)
			
				with(objParasiteSpawner) {
					alarm[0] = 1
					attack_choice = 0
					wait = true
				}
			break;
		
			case "p":
				with(objParasiteWorm) {
					alarm[0] = 1
					attack_choice = 0
					wait = true
				}
			break;
			}
		
			rep++
		}
	}

	dest_ex(objCloudCreature)

	dest_ex(objSmartBomb)
	dest_ex(objSmartBombExplosion)

	dest_ex(objShotgunFlash)
	dest_ex(objHolyWater)

	dest_ex(objHorrorGhost)

	dest_ex(objIllusionCircle)
	dest_ex(objIllusionMiniCircle)
	dest_ex(objIllusionMiniSpiral)

	with(objBossParent) {
		if object_index != objParasiteWorm {
			alarm[0] = 1
			attack_choice = 0
			wait = true
		}
	}


}
