/// @description Insert description here
// You can write your code in this editor

event_inherited();

if !variable_instance_exists(self, "robot_y_lerp") {
	robot_y_lerp = 0

	if instance_exists(objPlayer) robot_y_lerp = objPlayer.y

	robot_angle = 0

	monster_x = 0
	monster_y = 0
}

if instance_exists(objPlayer) {
	robot_y_lerp = lerp(robot_y_lerp, objPlayer.y, 0.3)
	
	for(var goglene = objPlayer.x; goglene < room_width; goglene += 16)
    {
        var coll = collision_line(objPlayer.x, objPlayer.y, goglene, robot_y_lerp, objEnemyParent, false, false)
    
        if coll != noone
        {
        monster_x = coll.mid_x
		monster_y = coll.mid_y
		break;
        }
        else
        {
        monster_x = room_width
		monster_y = objPlayer.y
        }
    }
}

robot_angle = point_direction(x, y, monster_x, monster_y)