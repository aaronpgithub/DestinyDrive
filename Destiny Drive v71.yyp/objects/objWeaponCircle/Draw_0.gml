draw_self()
draw_set_colour(c_black)

switch(global.player) {
	case sprPlayer:
		draw_sprite(sprWeaponTreePip, weapon_index, x, y)
	break;
	case sprPlayerSpiritOfDespair:
		draw_sprite(sprWeaponTreeSpirit, weapon_index, x, y)
	break;
}

if circ_hover = true {
	draw_set_colour(c_black)
	draw_text_ext(5, 215, weapon_name + " - " + weapon_desc, 12, 315)
	draw_set_colour(c_white)
}

if objGameControl.level_complete_type != ""  and ID_layer != 8 {
	if instance_exists(sp1_ID) draw_line(x, y, sp1_ID.x, sp1_ID.y)
	if instance_exists(sp2_ID) draw_line(x, y, sp2_ID.x, sp2_ID.y)
}