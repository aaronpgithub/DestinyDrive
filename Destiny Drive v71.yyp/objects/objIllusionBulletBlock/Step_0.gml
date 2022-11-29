/// @description Insert description here
// You can write your code in this editor
if instance_exists(objCarriageOfIllusion) {
	motion_set(objCarriageOfIllusion.ill_angle, objCarriageOfIllusion.ill_speed)
} else { instance_destroy(); exit; }

//Shrink
if objCarriageOfIllusion.attack_choice != 3 {
	image_xscale = lerp(image_xscale, real_xsc, 0.3)
	shrink = false
} else {
	if image_xscale < real_xsc and shrink = false image_xscale = lerp(image_xscale, real_xsc, 0.3)
	
	if shrink = true {
		image_xscale = lerp(image_xscale, 0.2, 0.2)
	} else {
		image_xscale += 0.005
		if image_xscale > real_xsc + 0.2 shrink = true
	}
}
image_yscale = image_xscale
//

if x < -130 instance_destroy()

#region //Creating New circles
globalvar cscale; cscale = random_range(1.5, 2);
if first = true {
	if x <= 250 {
		var ang_c = point_direction(x, y, 250 + 40, -40) + random_range(-50, 50);
		var circular = instance_create(x + lengthdir_x(cscale * 32 + (real_xsc * 32) - 5, ang_c), y + lengthdir_y(cscale * 32 + (real_xsc * 32) - 5, ang_c), objIllusionBulletBlock)
		
		with(circular) {
			real_xsc = cscale
		}
		
		var rep_amt = choose(1, 2)
		if objCarriageOfIllusion.attack_choice = 2 rep_amt = 1
		
		repeat(rep_amt) {
			cscale = random_range(1.5, 2)
			ang_c = random_range(110, -15)
			var circular = instance_create(x + lengthdir_x(cscale * 32 + (real_xsc * 32) - 5, ang_c), y + lengthdir_y(cscale * 32 + (real_xsc * 32) - 5, ang_c), objIllusionBulletBlock)
		
			with(circular) {
				real_xsc = cscale
				first = false
			}
		}
		
		first = false
	}
}
#endregion