//draw_text(40, 40, string(global.frame_time div 5))

var fpsc = c_green

if fps_real < 60 fpsc = c_red

draw_text_outline_ext(string(fps_real), 5, 5, c_black, fpsc)

//draw_sprite(sprItem, itm, 50, 160)

/*
if instance_exists(objBossParent) {
	for(var teststuff = 0; teststuff < ds_list_size(objBossParent.attack_list); teststuff++) {
		draw_text(2 + (teststuff  * 12), 2, string(ds_list_find_value(objBossParent.attack_list, teststuff)))
		
		for(var teststuff2 = 0; teststuff2 < ds_list_size(objBossParent.attack_list); teststuff2++) {
			if ds_list_find_value(objBossParent.attack_list, teststuff) = ds_list_find_value(objBossParent.attack_list, teststuff2) and teststuff != teststuff2 {
				draw_text(2, 20, string("!!! MULTIPLE OF SAME ATTACK !!!"))
			}
		}
	}
}