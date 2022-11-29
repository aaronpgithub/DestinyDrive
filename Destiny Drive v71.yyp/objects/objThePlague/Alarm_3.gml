///@desc Blast

if transition_amount < portal_transition {
	repeat(2) {
	instance_create(mid_x, mid_y, objThePlagueBulletPortalBlast)
	}
} else {
	globalvar port_ang, spedport;
	port_ang = 0
	spedport = choose(-1, 1)
	
	repeat(4) {
		globalvar port_len;
		port_len = 0
		
		repeat(60) {
			var plo = instance_create(tele_x, tele_y, objThePlaguePortalLineBullet)
			
			with(plo) {
				portal_len = port_len
				angle = port_ang
				angle_sign = spedport
			}
			
			port_len += 12
		}
		
		port_ang += 90
	}
}