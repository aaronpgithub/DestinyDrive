/// @description Insert description here
// You can write your code in this editor
if global.temple_level = "sacrifice" {
	x = lerp(x, room_width, 0.1)
} else {
	image_alpha -= 0.1
	if image_alpha <= 0 instance_destroy()
}

var multiplier = 1;

if instance_exists(objWitch) {
	multiplier = objWitch.witch_speed
}

sacri_ang += (invert * (( 0.8 + (0.35 * instance_number(objCultist))) * multiplier) * global.enemy_spd)

if instance_exists(objEnemyParent) {
	with(objEnemyParent) {
		if pos_x < 210 pos_x = 250
	}
}