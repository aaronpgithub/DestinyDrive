/// @description rain
// You can write your code in this editor
alarm[3] = 18

globalvar random_y_pos, add_amt;
var follow = true

repeat(2) {
	if objPlayer_y < road_y_mid {
		random_y_pos = road_y_mid + random_range(0, 70)
	} else random_y_pos = road_y_mid + random_range(-90, 0)
	
add_amt = -3

if follow = true random_y_pos = objPlayer_y

	repeat(7) {
		var raininst = instance_create(x + (abs(add_amt) * (abs(add_amt) / 3)), y, objEyeOfTheStormRain) 
	
		with(raininst) {
			rain_y = random_y_pos + (add_amt * 6)
			spd = 2
			angle = 270
			image_angle = angle
		}
	
		add_amt++
	}
	
	follow = false
}