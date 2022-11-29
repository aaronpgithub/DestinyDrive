function scr_edge_dec() {
	if spawn = true {
		with(objBCKlayer) instance_destroy()
	
		var des = 0;

		set_decal(des, 9, 320, 64, sprEdgeRoad, 30)
		des++
		set_decal(des, 9, 320, 64, sprEdgeWall, 25)
		des++
		set_decal(des, 2, 320, 8, sprEdgeBackground, 40)

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

	draw_sprite(sprEdgeSkyline, 0, 0, 0)

	var draw = 2; //Background
	draw_decal(draw)

	draw--; //junkwall
	draw_decal(draw, true)

	draw--; //road
	draw_decal(draw)

	if room = rmGame objGameControl.quick_trans = false





}
