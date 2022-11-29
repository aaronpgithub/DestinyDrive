t += 1
t = t mod 360

depth = objPlayer.depth - 1

x = lerp(x, objPlayer_x - 10, 0.1)
y = lerp(y, 3 * sin(degtorad(t)) + (objPlayer_y - 10), 0.1)

