/// @description Insert description here
// You can write your code in this editor
event_inherited()
if jump = true {

fire_t += 1.5 * global.enemy_spd

y = ystart + ( (sin(degtorad(fire_t)) * amp) * sign(road_y_mid - ystart) )

x += (x_spd * global.enemy_spd)

	if ystart = ytst {
		if y > ystart instance_destroy()
	} else if y < ystart instance_destroy()
	
} else x += (x_spd * global.enemy_spd) / 4

if x > 180 or x < 0 instance_destroy()