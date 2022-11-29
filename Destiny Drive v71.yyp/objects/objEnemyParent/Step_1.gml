nat_angle += 2

if sprite_exists(sprite_index) {
	mid_x = x - sprite_get_width(sprite_index) / 2
	mid_y = y - sprite_get_height(sprite_index) / 2
}

if nat_angle > 360
{
nat_angle = 0
}

depth = -(y)

if global.hp > 0
{
    if rotate = false
    {
    x = lerp(x, pos_x, 0.06)
    y = lerp(y, 4 * sin(degtorad(t)) + pos_y, 0.06)
    t += 4
    }
    else
    {
        if instance_exists(objNaturesBane)
        {
        x = -8 + objNaturesBane.x + lengthdir_x(48, nat_angle)
        y = -8 + objNaturesBane.y + lengthdir_y(48, nat_angle)
        }
    }
}
else
{
y = lerp(y, pos_y, 0.06)
x += 9
}

if hp > max_hp
{
hp = max_hp
}

if hp <= 0 and unique_death = false
{
instance_destroy()
}

if x <= 0 and outside_special = false 
{
	instance_destroy()
}

if global.hp <= 0 and (x <= 0 or x >= room_width)
{
	instance_destroy()
}