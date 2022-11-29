event_inherited()

pos_x = global.xx
pos_y = global.yy

hp = round(2300 * global.enemy_hp)
max_hp = hp

t = random(360)
global.t = 0

attack_choice = 0

wall_type = "" //strt (straight), diag, more?
wall_dir = choose("up", "down") //up, down, maybe 'random'
dest_things = false

