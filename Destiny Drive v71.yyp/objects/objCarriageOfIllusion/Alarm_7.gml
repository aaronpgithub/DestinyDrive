/// @description Insert description here
// You can write your code in this editor

alarm[7] = 1

if attack_choice = 1 {
	globalvar angle_wall; angle_wall = point_direction(320, 0, objPlayer_x, objPlayer_y)
	var lenwall = -2;
	repeat(5) {
		var rude = instance_create(320 + lengthdir_x(8 * lenwall, angle_wall + 90), 0 + lengthdir_y(8 * lenwall, angle_wall + 90), objIllusionBulletOutside)

		with(rude) {
			spd = 4
			damage = 1
			angle = angle_wall
			image_angle = angle
		}
		lenwall++
	}
	repeat(3) {
		var i_r_a_a1 = random_range(180, 270), i_r_l_a1 = random_range(-30, 0)
		var rude2 = instance_create(320 + lengthdir_x(i_r_l_a1, i_r_a_a1), 0 + lengthdir_y(i_r_l_a1, i_r_a_a1), objIllusionBulletOutside)

		with(rude2) {
			spd = 3
			damage = 1
			angle = random_range(180, 270)
			image_angle = angle
		}
	}

alarm[7] = 25
}

//attack 2: spiral lines, slow down stage
//attack 3: stop, shrink circles, (reset alarm)
//attack 4: a mist of bouncy bullets appears
//attack 5: a wave of bullets keeping you confined to a certain area of the 