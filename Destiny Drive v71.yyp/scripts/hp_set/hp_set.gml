function hp_set() {
	var enemy_hp_setter = 0;

	if argument_count > 0 {
		enemy_hp_setter = argument[0]
	}

	switch(object_index) {
		//Wasteland
		case objDoubleShot:
			enemy_hp_setter = 35
		break;
		case objMediCar:
			enemy_hp_setter = 20
		break;
		case objJunker:
			enemy_hp_setter = 30
		break;
		case objTurretCar:
			enemy_hp_setter = 35
		break;
		case objTriple:
			enemy_hp_setter = 45
		break;
		case objTubbsy:
			enemy_hp_setter = 45
		break;
		case objBird:
			enemy_hp_setter = 40
		break;
		case objBanditCar:
			enemy_hp_setter = 35
		break;
		case objBanditGatling:
			enemy_hp_setter = 35
		break;
	
	
		//Swamp
		case objSquid:
			enemy_hp_setter = 80
		break;
		case objSmoker:
			enemy_hp_setter = 40
		break;
		case objBanditTruck:
			enemy_hp_setter = 40
		break;
		case objFly:
			enemy_hp_setter = 7
		break;
		case objSwampyTriple:
			enemy_hp_setter = 60
		break;
		case objSwampyBoneBoy:
			enemy_hp_setter = 40
		break;
		case objSwampyTurretCar:
			enemy_hp_setter = 40
		break;
		case objSwampFrog:
			enemy_hp_setter = 50
		break;
		case objSwampRat:
			enemy_hp_setter = 50
		break;
		case objLilLarva:
			enemy_hp_setter = 40
		break;
		case objQueen:
			enemy_hp_setter = 60
		break;
	
	
		//Forest
		case objPsychicBoneBoy:
			enemy_hp_setter = 63
		break;
		case objBlindEye:
			enemy_hp_setter = 90
		break;
		case objFollower:
			enemy_hp_setter = 90
		break;
		case objZigZag:
			enemy_hp_setter = 63
		break;
		case objPsychicSpitter:
			enemy_hp_setter = 90
		break;
		case objSuperHomer:
			enemy_hp_setter = 75
		break;
		case objBigZig:
			enemy_hp_setter = 75
		break;
		case objConstantBoy:
			enemy_hp_setter = 63
		break;
		case objForestFatEnemy:
			enemy_hp_setter = 63
		break;
	}

	hp = round(enemy_hp_setter * global.enemy_hp)
	max_hp = hp


}
