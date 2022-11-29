/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(objPlayer) {
	if objPlayer_x >= 200 {
		draw_sprite(sprWarning, 0, objPlayer_x + 16, objPlayer_y - 16)
	}
}
