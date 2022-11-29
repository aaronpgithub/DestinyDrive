event_inherited()

spd = (max_hp - hp) / 60

var inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objShifterSmoke)

with(inst)
{
sprite_index = sprBlueShifterSmoke
}

t = 0

if start_anim = true
{
    if ver_dir = "up"
    {
    pos_y -= 2 * spd
    }
    
    if ver_dir = "down"
    {
    pos_y += 2 * spd
    }
    
    if hor_dir = "left"
    {
    pos_x -= 2 * spd
    }
    
    if hor_dir = "right"
    {
    pos_x += 2 * spd
    }
    
    if pos_y > 235
    {
    ver_dir = "none"
    hor_dir = "left"
    pos_y = 234
    }
    
    if pos_y < 80
    {
    ver_dir = "none"
    hor_dir = "right"
    pos_y = 81
    }
    
    if pos_x > 312
    {
    ver_dir = "down"
    hor_dir = "none"
    pos_x = 311
    }
    
    if pos_x < 140
    {
    ver_dir = "up"
    hor_dir = "none"
    pos_x = 141
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

