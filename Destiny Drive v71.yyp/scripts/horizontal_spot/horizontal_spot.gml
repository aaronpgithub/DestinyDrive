///@param enemy_size
function horizontal_spot(argument0) {

	var e, w, mh;

	//mh and mv are middle horizontal and middle vertical
	//all the cardinal directions
	e = 288
	w = 184
	mh = 236
	//

	switch(global.level) {
		case "forest":
			switch(argument0) {
				case "s":
					return choose(w, mh);
				break;
				case "m":
					return choose(e);
				break;
				case "l":
					return choose(w, mh);
				break;
			}
		break;
	
		default:
		return choose(w, mh, e);
	}


}
