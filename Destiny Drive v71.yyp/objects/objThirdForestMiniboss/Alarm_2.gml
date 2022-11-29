/// @description Insert description here
// You can write your code in this editor
alarm[2] = 5

var addy = 0;

repeat(2) {
	var homeand = instance_create(room_width + 10, road_y_min + addy, objEnemyHomingBullet)

	with(homeand) {
		damage = 1
		spd = 2
		angle = 180
		distance = 30
		sensitivity = 0.2
		third_miniboss = true
	}
	
	addy += road_y_max - road_y_min
}

switch(attack_choice) {
	#region //Squares
	case 1: 
	if circle_wait_amount <= 0 {
	
		var squarewidth = 0, squareheight = 0, randys = random_range(10, 160);
	
		repeat(2) {
			if randys != 0 {
				repeat(3) {
					repeat(3) {
						var homeande = instance_create(room_width + 10 + (squarewidth * 8), road_y_min + randys + (squareheight * 8), objEnemyHomingBullet)
			
						with(homeande) {
							damage = 1
							spd = 2
							angle = 180
							distance = 30
							sensitivity = 0.2
							third_miniboss = true
						}
			
					squareheight++
					}
		
					squareheight = 0
					squarewidth++
				}
			
				randys = 0
			} else {
				squarewidth = 0
				repeat(3) {
					repeat(3) {
						var homeande = instance_create(room_width + 10 + (squarewidth * 8), objPlayer_y - 8 + (squareheight * 8), objEnemyHomingBullet)
			
						with(homeande) {
							damage = 1
							spd = 2
							angle = 180
							distance = 30
							sensitivity = 0.2
							third_miniboss = true
						}
			
					squareheight++
					}
		
					squareheight = 0
					squarewidth++
					randys = 0
				}
			}
		}
	
	

		circle_wait_amount = 6
	}
		circle_wait_amount--
	break;
	#endregion

	case 2: //Walls
	if circle_wait_amount <= 0 {
		
		var destray = irandom_range(2, 19)
		var mymy = 0;
	
			repeat(21) {
				if mymy < destray - 2 or mymy > destray + 1 {
					var hew = instance_create(room_width + 10, road_y_min + (mymy + 1) * 8, objEnemyHomingBullet)
				
						with(hew) {
							damage = 1
							spd = 2
							angle = 180
							distance = 30
							sensitivity = 0.2
							third_miniboss = true
						}
				}
				mymy++
			}
	
		circle_wait_amount = 10
	}
	
	circle_wait_amount--
	break;

	case 3: //Follow Player
		var homeinyadd = 0, repeatamthome = 1;
	
		if circle_wait_amount <= 0 {
			repeatamthome = 2
			circle_wait_amount = 4
		}
	
		circle_wait_amount--
	
		repeat(repeatamthome) {
			var hewe = instance_create(room_width + 10, objPlayer_y + homeinyadd, objEnemyHomingBullet)
				
				with(hewe) {
					damage = 1
					spd = 2
					angle = 180
					distance = 30
					sensitivity = 0.2
					third_miniboss = true
				}
			
			homeinyadd += choose(-60, 60)
		
			if objPlayer_y + homeinyadd < road_y_min or objPlayer_y + homeinyadd > road_y_max homeinyadd = -(homeinyadd)
		}

	break;

	case 4: //Tunnel
	var repetit = 1;
	
		repeat(12) {
			
			var sin_math_forest = (70 * sin(degtorad(forest_t)))
		
				if road_y_min + (repetit * 8) < road_y_mid + sin_math_forest - 25 
				or road_y_min + (repetit * 8) > road_y_mid + sin_math_forest + 25 
				{
					var hewew = instance_create(room_width + 10, road_y_min + (repetit * 8), objEnemyHomingBullet)
				
						with(hewew) {
							damage = 1
							spd = 2
							angle = 180
							distance = 30
							sensitivity = 0.1
							third_miniboss = true
						}
				}
			
			repetit += 2
		}
	break;
}