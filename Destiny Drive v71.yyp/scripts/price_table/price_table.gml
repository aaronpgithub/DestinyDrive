function price_table(argument0) {
	var by_tp;
	by_tp = argument0

#region //default prices
		switch(by_tp) {
			case 0:
			price = 4
			break;
			case 1:
			price = 4
			break;
			case 2:
			price = 1
			break;
			case 3:
			price = 1
			break;
			case 4:
			price = 4
			break;
		}
#endregion

	switch(global.level_number) {
		case 0: //waste
	#region
			switch(by_tp) {
				case 0:
				price = 4
				break;
				case 1:
				price = 4
				break;
				case 2:
				price = 1
				break;
				case 3:
				price = 1
				break;
				case 4:
				price = 4
				break;
			}
	#endregion
		break;
		case 1: //swamp
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 2: //forest
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 3: //volcano
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 4: //snow
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 5: //city
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 6: //ocean
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 7: //temple
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 8: //edge
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
		case 11: //killroom
		price = 0
		break;
		//hell price is always 4
		case 13: //tv
	#region
			switch(by_tp) {
				case 0:
				break;
				case 1:
				break;
				case 2:
				break;
				case 3:
				break;
				case 4:
				break;
			}
	#endregion
		break;
	}

	if free = true price = 0


}
