event_inherited()

hp = 200 * global.enemy_hp
max_hp = hp

ver_dir = choose("down", "up")
angle = 0
start_anim = false

spd = (max_hp - hp) / 60

alarm[0] = 20
alarm[1] = random_range(45, 120)

n = 112
e = 288
s = 224
w = 184
mh = 236
mv = 168

if xstart = mh + 200 and ystart = n
{
angle = 90
}

if xstart = mh + 200 and ystart = s
{
angle = 270
}

if xstart = e + 200 and ystart = mv
{
angle = 0
}

if xstart = w + 200 and ystart = mv
{
angle = 180
}

    pos_x = mh + lengthdir_x(78, angle)
    pos_y = mv + lengthdir_y(78, angle) - 15

