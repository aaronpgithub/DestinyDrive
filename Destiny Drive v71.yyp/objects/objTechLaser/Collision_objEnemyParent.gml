/// @description Insert description here
// You can write your code in this editor
if damage > 0 {
	globalvar damagetaken;
	damagetaken = damage
		with(other) {
			hp -= damagetaken
			flash = true
		}
damage = 0
}