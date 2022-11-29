/// @description Insert description here
// You can write your code in this editor
wizard_attack_choice = irandom_range(1, 3)

if prac_param(0) wizard_attack_choice = 1
if prac_param(1) wizard_attack_choice = 2
if prac_param(2) wizard_attack_choice = 3

wizard_xpos = 308
wizard_ypos = 48

wizard_t = 0
sine_start = false

wizard_leave = false
leave_x_spd = 0
leave_y_spd = 0

wizard_burst = 5
wizard_chosen_angle = random_range(180, 238)
at_point = false

if wizard_attack_choice = 1 wizard_burst = irandom_range(4, 5)

aim = -1

alarm[1] = room_speed * 10

image_index = wizard_attack_choice - 1