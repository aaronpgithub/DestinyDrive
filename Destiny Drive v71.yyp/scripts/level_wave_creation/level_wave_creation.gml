function level_wave_creation() {
	with(objGameControl) {
		var tyu2 = 0
		//the amount of waves for the level, 100 max
		repeat(100) {
		wave_array[tyu2, 0] = 0
		wave_array[tyu2, 1] = 0
		wave_array[tyu2, 2] = 0
		tyu2++
		} 

		var small, medium, large, wave_create_amount, small_random, medium_random, large_random, max_per_wave, s_max_enemies, m_max_enemies, l_max_enemies;
		small = 25;
		medium = 8;
		large = 3;
		max_per_wave = 9
		wave_create_amount = global.wave_max - 2 //sub for shop, boss

		small_random = 6
		medium_random = 2
		large_random = 1
	
		mini_wave = irandom(wave_create_amount)
	
	#region
		switch(global.level) {
			case "wasteland": //8 waves of enemies
			small = 25;
			medium = 10;
			large = 3;
			small_random = 6
			medium_random = 2
			large_random = 1
			break;
			case "swamp": //8 waves of enemies
			small = 25;
			medium = 12;
			large = 3;
			small_random = 6
			medium_random = 2
			large_random = 1
			storm = mini_wave - 1
			break;
			case "forest": //7 waves of enemies
			small = 26;
			medium = 0;
			large = 0;
			small_random = 9
			medium_random = 1
			large_random = 1
		
				//making sure each wave has at least one medium (special enemy) and one large in the forest
				for(var wave_create_forest = 0; wave_create_forest <= wave_create_amount; wave_create_forest++) {
					if wave_create_forest != mini_wave {
						wave_array[wave_create_forest, 1] += 2
						wave_array[wave_create_forest, 2]++
					}
				}
			break;
			case "volcano": //13 waves of enemies
			small = 30;
			medium = 12;
			large = 5;
			small_random = 6
			medium_random = 2
			large_random = 1
			break;
			case "snow": //13 waves of enemies
			small = 35;
			medium = 15;
			large = 7;
			small_random = 7
			medium_random = 3
			large_random = 2
			break;
			case "city": //17 waves
			small = 35;
			medium = 15;
			large = 7;
			small_random = 7
			medium_random = 3
			large_random = 2
			break;
			case "ocean": //18 waves of enemies
			small = 35;
			medium = 15;
			large = 7;
			small_random = 7
			medium_random = 3
			large_random = 2
			break;
			case "temple":
			small = 35;
			medium = 15;
			large = 7;
			small_random = 6
			medium_random = 2
			large_random = 1
			mini_wave = 11
			break;
			case "edge": //18 waves of enemies
			small = 35;
			medium = 15;
			large = 7;
			small_random = 7
			medium_random = 3
			large_random = 2
			break;
		}
	#endregion

		do {
			for(var enemy_size = 0; enemy_size < 3; enemy_size++) {
				for(var wave_create_loop = 0; wave_create_loop < wave_create_amount; wave_create_loop++) {
						if wave_create_loop != mini_wave {
							var lowest_wave = 0, lowest_number = 10;
							var enemy_amount = irandom(9)
							var wave_clamp = 9;

							switch(enemy_size) { //setting potential enemy adding
								case 0:
								enemy_amount = clamp(irandom(small_random), 1, small)
								break;
								case 1:
								enemy_amount = clamp(irandom(medium_random), 1, medium)
								break;
								case 2:
								enemy_amount = clamp(irandom(large_random), 1, large)
								break;
							} //

								for(var lowest = 0; lowest <= wave_create_amount; lowest++) { //finding which wave to add to
									if lowest != mini_wave {
										wave_clamp = level_wave_clamps(lowest) //finding if wave clamp needs to be smaller
									
										//adding up every enemy on the wave
										var all_added = wave_array[lowest, 0] + wave_array[lowest, 1] + wave_array[lowest, 2]
									
										if lowest_number > all_added and all_added < wave_clamp {
											lowest_wave = lowest
											lowest_number = all_added
										}
									}
								}
						
								if lowest_number = 0 enemy_amount = 1
							
								wave_clamp = level_wave_clamps(lowest_wave)
			
							var all_array_positions_added = wave_array[lowest_wave, 0] + wave_array[lowest_wave, 1] + wave_array[lowest_wave, 2]
		
							//subtract to fill up to 9
							if all_array_positions_added + enemy_amount > wave_clamp enemy_amount = 0
			
							wave_array[lowest_wave, enemy_size] += enemy_amount
							switch(enemy_size) {
								case 0:
								small -= enemy_amount
								break;
								case 1:
								medium -= enemy_amount
								break;
								case 2:
								large -= enemy_amount
								break;
							}
						}
				}
			}
		} until (small <= 0 and medium <= 0 and large <= 0)
	}


}
