function scr_killroom_dec() {
	if spawn = true {
	bg[0, 0] = 9 //speed
	bg[0, 1] = 320 //x
	bg[0, 2] = 64 //y
	spawn = false
	}

	bg[0, 1] -= bg[0, 0] * global.decal_spd

	if bg[0, 1] < -320 bg[0, 1] = 320

	for(var p = 0; p < 3; p++) {
	draw_sprite(sprKillRoomRoad, 0, bg[0, 1] + (p * 320), bg[0, 2])
	}



}
