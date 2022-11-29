event_inherited()

hp = round(23 * global.enemy_hp)
max_hp = hp

burst_time = 450 * (instance_number(objPOGat) / 1.6)
burst = 0
gat_ang = 0
gat_ang_max = 7
gat_start_ang = point_direction(x, y, objPlayer_x, objPlayer_y) + choose(-20, 20)
alrmsub = 0

lerp_ang = gat_ang + gat_start_ang
lerp_ang2 = -gat_ang + gat_start_ang

alarm[6] = burst_time / 2
