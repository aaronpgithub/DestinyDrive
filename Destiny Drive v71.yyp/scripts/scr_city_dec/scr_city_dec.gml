function scr_city_dec() {
	if spawn = true {
		with(objBCKlayer) instance_destroy()
	
		var des = 0;

		set_decal(des, 9, 320, 64, sprCityRoad, 30)
		des++
		set_decal(des, 9, 320, 64, sprCityWall, 25)
		des++
		set_decal(des, 2, 320, 8, sprCityBackground, 40)
		des++
		set_decal(des, 0.75, 320, 0, sprClouds, 45)

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
#region clouds
	add_movement(dec, "cloud", false, false)
#endregion

	draw_sprite(sprCitySkyline, 0, 0, 0)

	var draw = 3; //clouds
	draw_decal(draw, false, "clouds")

	draw--; //bck
	draw_decal(draw)

	draw--; //junkwall
	draw_decal(draw, true)

	draw--; //road
	draw_decal(draw)

	if room = rmGame objGameControl.quick_trans = false





}
