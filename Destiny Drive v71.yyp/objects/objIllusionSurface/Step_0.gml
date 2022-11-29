/// @description Insert description here
// You can write your code in this editor
if instance_exists(objCarriageOfIllusion) {
	if objCarriageOfIllusion.attack_choice != 2 and !instance_exists(objIllusionCircle) {
		image_alpha -= 0.05
		if image_alpha <= 0 instance_destroy()
	}
}