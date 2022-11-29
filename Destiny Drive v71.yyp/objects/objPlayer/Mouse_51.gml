/// @description Essence of rest
// You can write your code in this editor
var nighting = 1;

if ds_map_exists(global.item_map, "nightinggale_lightning") nighting = 2

	if global.use_itm[0] = 27 { //Essence of Rest - NIGHTING gives more damage
    global.use_itm[1] += 0.01 * nighting
	}
	
	rest_jump = true