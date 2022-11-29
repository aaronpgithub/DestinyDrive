function weapon_tree_create() {
	 var lp = 0;
	repeat(10) {
	tree_array[lp] = 0
	lp++
	}

	for(var o = 0; o <= 10; o++) {
	    for(var ox = 0; ox <= 20; ox++) {
		    if global.w_tree[o, ox] != "" {
				tree_array[o]++
			} else break;
	    }
	}

	var offset = 0;
	var xoff, yoff;
	xoff = 0
	yoff = 0

	for(var tolp = 0; tolp < array_length_1d(tree_array); tolp++) {
		for(var tilp = 0; tilp < tree_array[tolp]; tilp++) {
			if global.player = sprPlayer {
				var w_const = room_width / 2
				var h_const = -60
				switch(tolp) {
					case 0:
					instance_create_depth(w_const, h_const, -3000, objWeaponCircle)
					break;
					case 1:
					instance_create_depth(w_const - 32 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 2:
					instance_create_depth(w_const - 96 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 3:
					instance_create_depth(w_const - 160 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 4:
					instance_create_depth(w_const - 224 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 5:
					instance_create_depth(w_const - 224 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 6:
					instance_create_depth(w_const - 224 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 7:
					instance_create_depth(w_const - 224 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
					break;
					case 8:
					var do_yoff = true;
					instance_create_depth(w_const - 248 + (48 * tilp) + xoff, (h_const) - (64 * tolp) + yoff + 24, -3000, objWeaponCircle)
							offset++
							if offset = 2 {
								xoff -= 32
						
									if yoff = 0 {
										if do_yoff = true yoff = -48
										do_yoff = false
									}
							
									if yoff = -48 {
										if do_yoff = true yoff = 0
										do_yoff = true
									}
								offset = 0
							}
					break;
				}
			}
		
			if global.player = sprPlayerSpiritOfDespair {
				var w_const = room_width / 2
				var h_const = -60
				switch(tolp) {
					case 0:
					instance_create_depth(w_const, h_const, -3000, objWeaponCircle)
					break;
					default:
					instance_create_depth(w_const - 32 + (64 * tilp), (h_const) - (64 * tolp), -3000, objWeaponCircle)
				}
			}
		}
	}


}
