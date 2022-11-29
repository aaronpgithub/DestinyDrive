event_inherited()

hp_set(1600)

attack_choice = 0

portal_transition = 2

invert = false
color = sprRegularBulletWhite

puke_y = road_y_mid
puke_add = 90

plague_circles = ds_list_create()
circle_timer = 30
circle_num = 0
circle_speed = 0.7

tele_id = 0
tele_time = 1
tele_time_mult = 1

tele_x = random_range(40, 280)
tele_y = random_range(40, 200)
phase_time = 90

plague_radius = 25

plague_surface = surface_create(plague_radius * 2 + 10, plague_radius * 2 + 10)

shadow_height = plague_radius * 1.25

happy = false
if random(10) <= 0.01 happy = true
happy_color_1 = random(124)
happy_color_2 = happy_color_1 + 125

spiral_amount_portal = 0