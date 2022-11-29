event_inherited()

spd = (max_hp - hp) / 60

var inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objShifterSmoke)

with(inst)
{
sprite_index = sprRedShifterSmoke
}

t = 0

pos_x = mh + lengthdir_x(78, angle)
pos_y = mv + lengthdir_y(78, angle) - 15

if start_anim = true
{   
    
    if ver_dir = "up"
    {
    angle -= 2 * spd
    }
    
    if ver_dir = "down"
    {
    angle += 2 * spd
    }
}

if x < pos_x + 0.2
{
start_anim = true
}

if global.hp <= 0
{
start_anim = false
pos_x += 9
}

if start_anim = true
{
y = pos_y
x = pos_x
}

