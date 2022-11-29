function scr_forest_dec() {
	if spawn = true {
		with(objBCKlayer) instance_destroy()
	
		var des = 0;

		set_decal(des, 9, 320, 64, sprForestRoad, 30)
		des++
		set_decal(des, 9, 320, 64, sprForestWall, 25)
		des++
		set_decal(des, 2, 320, 64, sprForestBackground, 40)
		des++
		set_decal(des, 1.5, 320, 64, sprForestFartherBackground, 50)
		des++
		set_decal(des, 0, 320, 64, sprForestFog, 55)
		des++
		set_decal(des, 0, 320, 64, sprForestFog, 45)
		des++
		set_decal(des, 0, 320, 64, sprForestFog, 35)
	
	spawn = false
	}

	var quick_t = false;

	if room = rmGame quick_t = objGameControl.quick_trans

	var dec = 0;
#region road
	add_movement(dec)
#endregion
	dec++
#region wall
	add_movement(dec)
#endregion
	dec++
#region Background
	add_movement(dec, "", quick_t)
#endregion
	dec++
#region Far Background
	add_movement(dec, "", quick_t)
#endregion

	var draw;

	draw = 6; //fog
	draw_decal(draw, false, "forest_fog")

	draw--; //fog
	draw_decal(draw, false, "forest_fog")

	draw--; //fog
	draw_decal(draw, false, "forest_fog")

	draw--; //far bck
	draw_decal(draw)

	draw--; //bck
	draw_decal(draw)

	draw--; //junkwall
	draw_decal(draw, true)

	draw--; //road
	draw_decal(draw)

	if room = rmGame objGameControl.quick_trans = false





}
