if ds_map_exists(global.item_map, "pierce")
	piercing()

depth = -300

if check_bullet("anomaly") {
	if instance_exists(objPlayer) {
	
	anomaly_x = objPlayer.x - objPlayer.xprevious
	anomaly_y = objPlayer.y - objPlayer.yprevious
	
	x += anomaly_x
	y += anomaly_y
	
	anomaly_x = 0
	anomaly_y = 0
	}
}

if check_bullet("anti_anomaly") {
	if instance_exists(objPlayer) {
	
	anomaly_x = objPlayer.x - objPlayer.xprevious
	anomaly_y = objPlayer.y - objPlayer.yprevious
	
	x += anomaly_x
	y -= anomaly_y
	
	anomaly_x_prev = anomaly_x
	anomaly_y_prev = anomaly_y
	anomaly_x = 0
	anomaly_y = 0
	}
}