/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp_set(1000)

burst = 4

alarm[0] = 90

bubbleang = random_range(70, 80) * choose(1, -1)

pos_x = 230
pos_y = ystart

shootatsametime = false

if instance_exists(objParasiteSpawner) shootatsametime = objParasiteSpawner.shootatsame

if prac_param(0) shootatsametime = false
if prac_param(1) shootatsametime = true

champ = c_white

follower = false