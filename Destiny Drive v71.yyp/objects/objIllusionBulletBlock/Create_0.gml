/// @description Insert description here
// You can write your code in this editor
image_speed = 0

first = true

real_xsc = random_range(1.5, 2)
image_xscale = 0

shrink = false
/*
if instance_exists(objCarriageOfIllusion) {
	if objCarriageOfIllusion.attack_choice = 2 {
							//illusion_circle_line_randomAngle, illusion_line_speed_globalvar
		var repeat_amt, i_c_myID, i_l_s_gv;
		repeat_amt = 5;	
		i_c_myID = id;
		
		repeat(repeat_amt) {
			var sp_bul = instance_create(x, y, objIllusionCircleSpiralBullet)
			
			with(sp_bul) {
				i_l_d = 40
				angle = repeat_amt * 72
				damage = 1
				i_c_ID = i_c_myID
			}
			
			repeat_amt-- //for finding the len of the next bullet
		}
		sp_bul = instance_create(x, y, objIllusionCircleSpiralBullet)
			
			with(sp_bul) {
				i_l_d = 0
				angle = 0
				damage = 1
				i_c_ID = i_c_myID
			}
	}
}