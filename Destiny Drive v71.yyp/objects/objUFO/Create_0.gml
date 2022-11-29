event_inherited()

if global.debg = true
{
instance_destroy()
}

invincible = true

pos_x = global.xx
pos_y = global.yy

leave = false

las_y_pos = 85

alarm[6] = random_range(80, 150)

hp = round(100000000 * global.enemy_hp)
max_hp = hp
//room_speed * 60
alarm[10] = 1

t = random(360)
global.t = 0

attack_choice = 0

angle = 0
angle_add = false


