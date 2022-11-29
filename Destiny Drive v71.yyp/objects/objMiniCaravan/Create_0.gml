event_inherited()

alarm[5] = room_speed * random_range(4, 10) //can shoot when not doing normal attack
alarm[6] = -1 //burst time

champ = c_white

hp_set(450)

ind_shoot = false
burst = 4

funneling = false
funnel_angle = -10

if instance_number(objMiniCaravan) > 1 sprite_index = sprCaravanMini2