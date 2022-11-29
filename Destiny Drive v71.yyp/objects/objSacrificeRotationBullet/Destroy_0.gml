/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(objSacrificeGod) {
	if real_len > 200 or meanie = false exit;

	globalvar ssa, sl, mdid;

	ssa = offset_sacri
	sl = meanie_len
	mdid = meanie_id

	var sacrificebulr2 = instance_create(90, road_y_mid, objSacrificeRotationBullet)
		
	with(sacrificebulr2) {
		offset_sacri = ssa
		meanie_len = sl
		path_length = -1
		meanie = true
		meanie_id = mdid
	}
}