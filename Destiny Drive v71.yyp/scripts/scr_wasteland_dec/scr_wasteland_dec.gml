function scr_wasteland_dec() {
	if spawn = true {
		with(objBCKlayer) instance_destroy()
	
		var des = 0;

		set_decal(des, 9, 320, 64, sprRoad, 30)
		des++
		set_decal(des, 9, 320, 64, sprWall, 25)
		des++
		set_decal(des, 2, 320, 8, sprBackground, 40)
		des++
		set_decal(des, 1.3, 320, 32, sprFarBackground, 45)
		des++
		set_decal(des, 0.7, 320, 24, sprFartherBackground, 50)
		des++
		set_decal(des, 0.75, 320, 0, sprClouds, 43)
	
	spawn = false
	}

	var quick_t = false
	var less_mini = false
	var	greater_mini = false

	if room = rmGame {
		if global.wave > objGameControl.mini_wave - 4 { less_mini = true }
		if global.wave > objGameControl.mini_wave + 1 { greater_mini = true }
		quick_t = objGameControl.quick_trans
	}

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

	draw_sprite(sprSkyline, 0, 0, 0)

	var draw = 5; //clouds
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
