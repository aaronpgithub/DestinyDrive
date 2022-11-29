event_inherited()

hp_set(1600)

attack_choice = 0
security_transition = 1

shooting_line_with_minicars = choose(true, false)
funnel = choose(true, false)

shadow_height = 20
draw_shadow = false

angle = 0
angle_add = true

//when to shoot, the alarm is too quick so we multiply the actual speed
max_spray_b = 4
spray_b = max_spray_b

globalvar minicar;
minicar = -1;

repeat(2) {
	var carmin = instance_create(x, y + (30 * minicar), objMiniCaravan)
	
	with(carmin) {
		pos_y = y + (30 * minicar)
	}
	
	minicar = -(minicar)
}

wheel_angle = 0
mouth_position = 0

sec_bot = part_type_create()
part_type_direction(sec_bot, 40, 60, 1.2, 4)
part_type_speed(sec_bot, 3, 4, 0, 0)
part_type_sprite(sec_bot, sprSecurityBot, false, false, false)
part_type_life(sec_bot, 90, 90)

sec_bot_bck = part_type_create()
part_type_direction(sec_bot_bck, 179, 181, 0, 1)
part_type_speed(sec_bot_bck, 2, 3, 0, 0)
part_type_sprite(sec_bot_bck, sprSecurityBotBackground, false, false, false)
part_type_life(sec_bot_bck, 240, 240)

sec_bot_bck_opp = part_type_create()
part_type_direction(sec_bot_bck_opp, 179, 181, 0, 1)
part_type_speed(sec_bot_bck_opp, 1, 2, 0, 0)
part_type_sprite(sec_bot_bck_opp, sprSecurityBotFarBackground, false, false, false)
part_type_life(sec_bot_bck_opp, 450, 450)

part_s_bck = part_system_create()
part_system_depth(part_s_bck, 35)

part_s_bck_2 = part_system_create()
part_system_depth(part_s_bck_2, 41)