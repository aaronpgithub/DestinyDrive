/// @description Circle
// You can write your code in this editor

//choose between four random angle choices

if transition_amount < 1 {

	alarm[3] = 110

	var second_circ = choose(-1, 1)

	var position_ill, o, randomangle, invert;
	position_ill = 1						//the direction, (-1, 1)
	randomangle = random_range(-30, 10)		//random adding, adds 180
	invert = choose(-1, 1)
	if invert = 1 randomangle = random_range(350, 380)


	repeat(2) {
		for(o = 1; o < 50; o++) {
			var cicular = instance_create(room_width / 2 + ((room_width / 2) * position_ill), road_y_mid, objIllusionCircle)
			
			with(cicular) {
				illusion_angle = 7.2 * o + randomangle
				ill_dir = invert
				image_index = irandom(image_number)
				rand = randomangle
			
				if o = 1 or o = 49 {
					image_speed = 0
					image_index = 0
				}
			}
		}
	
		invert = second_circ
		randomangle = random_range(190, 240)
		if invert = 1 randomangle = random_range(480, 540)
		position_ill = -1
	}
} else {
	alarm[3] = 25
	var random_l = irandom(-28)
	for(var well = -10; well <= 10; well++)
	{
		var wallOfBullet = instance_create(320 + lengthdir_x(28 * well + random_l, 135), 0 + lengthdir_y(28 * well + random_l, 135), objIllusionBulletOutside)
		
		with(wallOfBullet)
		{
			damage = 1
			angle = 45
			spd = -2
		}
	}
}