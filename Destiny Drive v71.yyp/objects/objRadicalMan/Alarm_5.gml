/// @description Insert description here
// You can write your code in this editor
if skater_burst >= 0 {
	
	var d = instance_create(-40, random_range(road_y_min + 30, road_y_max - 10), objSkater)
	
		with(d) {
			spd = random_range(1, 2.5)
		}
		
	skater_burst--
	alarm[5] = 30
}