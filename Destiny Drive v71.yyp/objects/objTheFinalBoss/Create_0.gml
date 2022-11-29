event_inherited()

yellow_alarm = 8 //every 8 frames a yellow bullet is created

//pos_x = global.xx
//pos_y = global.yy

hp = round(20000 * global.enemy_hp)
max_hp = hp

t = random(360)
global.t = 0

attack_choice = 0

angle = 0
angle_add = false

r_skull_hand_x = x
r_skull_hand_y = y
rhand_t = random(360)

l_skull_hand_x = x
l_skull_hand_y = y
lhand_t = random(360)

bullet_wave_y = -10
bullet_wave_angle = 0
bullet_fade = 10 //the amount of bullets created every step
bullet_fade_add = 0.05
bullet_fade_rem = 0.5

//0 = the regular, bullet waves and bullet blockers
//1 = bullet waves come from a 360 degrees, bullet in the middle, more bullets added
//2 = something with bullets being destroyed in a radius?
bullet_block_type = irandom_range(0, 2)
bullet_block_extra = choose("bullet", "wall", "circle") //if attack is 2, there can be either rotating bullet walls or yellow bullets
first_circle = true


sine_t_1 = 0
sine_t_2 = 0

sine_area_1_x = random_range(30, 60)
sine_area_1_y = random_range(road_y_min + 40, road_y_max - 60)

sine_area_2_x = random_range(30, 60)
sine_area_2_y = random_range(road_y_min + 40, road_y_max - 60)
sx2 = 220
sy2 = 150

global.ang3 = 0
global.len_spd = 0

block_id = 0

