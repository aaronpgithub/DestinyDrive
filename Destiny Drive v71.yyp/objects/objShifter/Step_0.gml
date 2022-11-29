event_inherited()

spd = (max_hp - hp) / 60

instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objShifterSmoke)

if ver_dir = "up"
{
pos_y -= 2 * spd
}

if ver_dir = "down"
{
pos_y += 2 * spd
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

