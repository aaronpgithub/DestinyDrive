/// @description Insert description here
// You can write your code in this editor
event_inherited()

	if !instance_exists(objSacrificeGod) {
		instance_destroy()
	} else {

			//set angle
			image_angle = objSacrificeGod.sacri_ang + offset_sacri
			//

			//resize
			if image_xscale <= 1 {
			image_xscale += 0.1
			image_yscale = image_xscale
			}
			//

			if meanie = false real_len++

			x = xstart + lengthdir_x(real_len, objSacrificeGod.sacri_ang + offset_sacri)
			y = ystart + lengthdir_y(real_len, objSacrificeGod.sacri_ang + offset_sacri)

			if real_len > 200 instance_destroy()

		if meanie = true {
			if real_len < meanie_len real_len++
	
			offset_sacri -= meanie_spd * global.enemy_spd

			image_angle = offset_sacri

			x = xstart + lengthdir_x(real_len, offset_sacri)
			y = ystart + lengthdir_y(real_len, offset_sacri)
	
			if !instance_exists(meanie_id) {
				image_xscale -= 0.2
				image_yscale = image_xscale
				if image_xscale <= 0 instance_destroy()
			}
		}

			if x < 8 or x > 174 or y < road_y_min + 4 or y > road_y_max - 6 {
				image_alpha = 0
				damage = 0
			} else {
				image_alpha = 1
				damage = 1
			}
	}