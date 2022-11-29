event_inherited()

if ver_dir = "up"
{
pos_y -= spd
}

if ver_dir = "down"
{
pos_y += spd
}

if pos_y > 240
{
ver_dir = "up"
}

if pos_y < 80
{
ver_dir = "down"
}

y = pos_y

