len += spd
if instance_exists(objPlayer) {
    angle = point_direction(objPlayer.x, objPlayer.y, 80, road_y_mid)
    
    x = objPlayer.x + lengthdir_x(len, point_direction(objPlayer.x, objPlayer.y, 80, road_y_mid))
    y = objPlayer.y + lengthdir_y(len, point_direction(objPlayer.x, objPlayer.y, 80, road_y_mid))
}

