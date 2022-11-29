/// @description Insert description here
// You can write your code in this editor
x = lerp(x, xstart + xoff, 0.2)
y = lerp(y, ystart + yoff, 0.2)

if ds_list_find_index(starterweps, weapon_type) != -1 and objGameControl.weapon_selected[0] = 0 {
	objGameControl.weapon_selected[0] = id
}

if split_2 != 0 { //this cancels all the final guns from doing this code 
	if sp1_ID = 0 or sp2_ID = 0 {
		globalvar myyi;
		myyi = ID_layer

		for(var dpdp = 0; dpdp < instance_number(objWeaponCircle); dpdp++) {
			var itdp = instance_find(objWeaponCircle, dpdp)
			if itdp.ID = split_1 and itdp.ID_layer = myyi + 1 {
				sp1_ID = itdp.id
			}
	
			if itdp.ID = split_2 and itdp.ID_layer = myyi + 1 {
				sp2_ID = itdp.id
			}
		}
	}
}