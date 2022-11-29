t += 1
t = t mod 360

depth = objPlayer.depth - 1

if rounds < 0
{
x = lerp(x, parent_object.x + 10, 0.1)
y = lerp(y, 3 * sin(degtorad(t)) + (parent_object.y - 10), 0.1)
}
else
{
x = lerp(x, objPlayer_x - 10, 0.1)
y = lerp(y, 3 * sin(degtorad(t)) + (objPlayer_y - 10), 0.1)
}

if !instance_exists(objEnemyParent) and !instance_exists(objShop) and rounds != -40
{
rounds -= 1
}

if rounds <= 0 and rounds != -40
{
instance_destroy()
}

