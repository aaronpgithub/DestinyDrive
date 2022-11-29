event_inherited()

hp = 200 * global.enemy_hp
max_hp = hp

ver_dir = choose("down", "up")

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
instance_change(choose(objShifter, objRedShifter), true)
}

if xstart = mh + 200 and ystart = s
{
instance_change(choose(objShifter, objRedShifter), true)
}

if xstart = e + 200 and ystart = mv
{
instance_change(choose(objShifter, objRedShifter), true)
}

if xstart = w + 200 and ystart = mv
{
instance_change(choose(objShifter, objRedShifter), true)
}

if xstart = w + 200 and ystart = n
{
instance_change(choose(objShifter, objBlueShifter), true)
}

if xstart = w + 200 and ystart = s
{
instance_change(choose(objShifter, objBlueShifter), true)
}

if xstart = e + 200 and ystart = n
{
instance_change(choose(objShifter, objBlueShifter), true)
}

if xstart = e + 200 and ystart = s
{
instance_change(choose(objShifter, objBlueShifter), true)
}

