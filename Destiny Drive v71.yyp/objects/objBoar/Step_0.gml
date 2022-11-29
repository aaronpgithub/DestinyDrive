if hp <= 0
{
instance_destroy()
}
else
{
y = 4 * sin(degtorad(t)) + pos_y
t += 4
}

if instance_exists(objBoarHerder) {
	x = objBoarHerder.x - (objBoarHerder.xstart - xstart)
}