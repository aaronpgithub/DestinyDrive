/// @description Insert description here
// You can write your code in this editor
if instance_exists(objCarriageOfIllusion) {
	
	if objCarriageOfIllusion.transition_amount >= 1 {
		draw_surface(objCarriageOfIllusion.illusion_surface, 0, 0)
		
		if instance_exists(objBackgroundControl) {
			objBackgroundControl.draw_background = false
		}
	}
	
} else instance_destroy()