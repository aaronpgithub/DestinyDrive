t += 1
t = t mod 360

x = lerp(x, parent_object.x - 10, 0.1)
y = lerp(y, 3 * sin(degtorad(t)) + (parent_object.y + 6), 0.1)

depth = objPlayer.depth - 1

