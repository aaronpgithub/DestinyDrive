function scr_volcano_dec() {
	if spawn = true {
		with(objBCKlayer) instance_destroy()
	
		var des = 0;

		set_decal(des, 9, 320, 64, sprVolcanoRoad, 30)
		des++
		set_decal(des, 9, 320, 64, sprVolcanoWall, 25)
		des++
		set_decal(des, 2, 320, 8, sprVolcanoBackground, 40)
		des++
		set_decal(des, 1.3, 320, 32, sprVolcanoFarBackground, 43)
		des++
		set_decal(des, 0.7, 320, 24, sprVolcanoFartherBackground, 50)
		des++
		set_decal(des, 0.75, 320, 0, sprVolcanoClouds, 45)
		des++
		set_decal(des, 0.60, 320, 0, sprSwampCloudsBack, 55)
	
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
	dec++
#region Farther Background
	add_movement(dec, false, false, false)
#endregion
	dec++
#region clouds
	add_movement(dec, "cloud", false, false)
#endregion
	dec++
#region far clouds
	add_movement(dec, "", false, false)
#endregion

	draw_sprite(sprVolcanoSkyline, 0, 0, 0)

	var draw = 6; //far clouds
	draw_decal(draw)

	draw--; //clouds
	draw_decal(draw)

	draw--; //farthest bck
	draw_decal(draw)

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
