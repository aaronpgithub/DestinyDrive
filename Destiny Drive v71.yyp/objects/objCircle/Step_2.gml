/// @description Insert description here
// You can write your code in this editor
if ds_map_exists(global.item_map, "anomaly") {
	if instance_exists(objPlayer) {
	
	anomaly_x = objPlayer.x - objPlayer.xprevious
	anomaly_y = objPlayer.y - objPlayer.yprevious
	
	x += anomaly_x
	y += anomaly_y
	
	anomaly_x = 0
	anomaly_y = 0
	}
}