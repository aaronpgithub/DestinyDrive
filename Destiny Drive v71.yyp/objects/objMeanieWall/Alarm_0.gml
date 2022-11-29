/// @description Insert description here
// You can write your code in this editor
globalvar glgl, mlml, mdmd;
mlml = meanie_amt
mdmd = meanie_id
	for(glgl = 1; glgl < 12; glgl += 2) {
		
			var sacrificebulr = instance_create(90, road_y_mid, objSacrificeRotationBullet)
		
			with(sacrificebulr) {
				offset_sacri = (360 / instance_number(objMeanieWall)) * mlml
				meanie_len = 12 * glgl
				meanie = true
				meanie_id = mdmd
			}
	}