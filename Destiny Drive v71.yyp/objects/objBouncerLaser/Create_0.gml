/// @description Insert description here
// You can write your code in this editor
event_inherited()

damage = 1
dont_dest = true
no_move_destroy = false
outside_special = true

bounce_laser_id = id

globalvar cmon;
cmon = id

var togan = instance_create(x, y, objBouncerLaserMid)

with(togan) {
	bounce_laser_id = cmon
}

bnce = true