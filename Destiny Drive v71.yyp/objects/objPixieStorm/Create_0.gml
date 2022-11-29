event_inherited()

//pos_x = 0
//pos_y = 0

alien_x = 128
alien_dir = "up"

hp = round(1500 * global.enemy_hp)
max_hp = hp

t = random(360)
global.t = 0

attack_choice = 0

angle = 0
angle_add = false

repeat(125)
{
instance_create(x, y, objPixie)
}

