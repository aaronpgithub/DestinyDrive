/// @description Insert description here
// You can write your code in this editor
if objGameControl.level_complete_type = "weapon" {
	
	var c_wep_inst = objGameControl.weapon_selected[objGameControl.current_weapon];
	
		if c_wep_inst.ID_layer = ID_layer - 1 and ( (c_wep_inst.split_1 = ID or c_wep_inst.split_2 = ID) or ds_map_exists(global.item_map, "gun_perm") ) {
	
			objPlayer.weapon = weapon_type
				with(objPlayer) weapon_initiate()
				
			var weptest = true;
			var cxv = 0;
			
			with(objGameControl) { //reset weapon pool stuff
				mouse_offset_x = 0
				mouse_offset_y = 0
				pre_m_off_x = 0
				pre_m_off_y = 0
			}
	
			do { //selecting weapon
				if objGameControl.weapon_selected[cxv] = 0 {
					objGameControl.weapon_selected[cxv] = id
					objGameControl.current_weapon++
					objGameControl.level_complete_type = "transition"
					weptest = false
				}
				cxv++
			} until (weptest = false)
		}
}