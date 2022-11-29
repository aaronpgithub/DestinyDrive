/// @description Insert description here
// You can write your code in this editor
event_inherited()

dead_acc += point_distance(objPlayer_x, objPlayer_y, objPlayer_x, objPlayerFollow.y) / 40
reacc_spd -= point_distance(objPlayer_x, objPlayer_y, objPlayer_x, objPlayerFollow.y) / 70
reacc_spd += 0.01

if reacc_spd < 0 reacc_spd = 0
if reacc_spd > 0.2 reacc_spd = 0.2

dead_acc -= reacc_spd

if dead_acc > 8 dead_acc = 8

if dead_acc < 0 dead_acc = 0