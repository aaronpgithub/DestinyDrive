event_inherited()

wait = false
hp = 10
max_hp = 10
t = random(360)
alarm[11] = room_speed * 4
pos_x = 0
pos_y = 0
spawn = true
attack_choice = 0
attack_done = -1
attack_done2 = -1 //this makes the attacks even more diverse, could bug out though
wait_amount = 1

transition_timer = 0
transition_done = true
transition_amount = 0

warning_timer = 1000
warning_x = room_width

attack_list = ds_list_create()
attack_amount = -10