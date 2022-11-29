event_inherited()

hp_set(1200)

attack_choice = 0

horror_angle = 0
angle_add = false

burst = 25

image_speed = 0.07

instance_create(objPlayer_x, objPlayer_y, objDarkness)

strip = 0
strip_dir = 1

laser_x = 0
laser_y = 0

darkness_alarm = 25 //time between lasers
darkness_prep = 35 //warning
darkness_alive = 5 //how long they damage
darkness_entry = 0.3 //how quickly they lerp in
darkness_alpha = 0.05 //how quickly they lerp in
darkness_death = 0.05 //how quickly they die
darkness_warmup = 2.25

horror_width = 3
horror_y = 0