var mily = 1

if instance_exists(objThePlague) mily = objThePlague.tele_time_mult

portal_radius_speed = (2 * tele_spd) * mily
radius += portal_radius_speed


        if radius > 700 and ID != 0 {
        instance_destroy()
        }
		
	if image_alpha <= 0 instance_destroy()

	if instance_exists(objThePlague) {
		x = lerp(x, objThePlague.tele_x, 0.1)
		y = lerp(y, objThePlague.tele_y, 0.1)
	} else instance_destroy()