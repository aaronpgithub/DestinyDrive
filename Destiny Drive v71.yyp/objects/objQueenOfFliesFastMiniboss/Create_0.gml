event_inherited()

pos_x = global.xx
pos_y = global.yy

hp = round(950 * global.enemy_hp)
max_hp = hp

t = random(360)
global.t = 0

attack_choice = 0

angle = 0
angle_add = false

sine_y = random_range(90, 200)
shoot = false
special = false //do a special attack when the flies do stuff
ver_dir = "up" //when doing fly attack, going up and down
flying = false //when doing fly attack
len = 0

ang = 0

