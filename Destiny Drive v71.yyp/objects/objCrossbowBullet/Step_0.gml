event_inherited()

if len < end_len {
	len += spd
	alarm[0] = 20
}

length_t += 15
sine_len = 16 * sin(degtorad(length_t))

x = xstart + lengthdir_x(len + sine_len, angle)
y = ystart + lengthdir_y(len + sine_len, angle)

if instance_exists(objTheHunter) {
	if objTheHunter.attack_choice != 3 {
		end_len = 300
		
		if len > 300 instance_destroy()
	}
}