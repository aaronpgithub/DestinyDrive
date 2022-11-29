/// @description Insert description here
// You can write your code in this editor

x = truex + myxoff
truex = lerp(truex, xps, lep)

t += random_range(1, 5)
t = t mod 360

y = round(ystart + (sin(degtorad(t)) * 2))

if alarm[1] < 0 {
	myxoff += random(0.5)
} else myxoff -= random(0.5)
if myxoff > xpsmax alarm[1] = irandom_range(50, 90)

if myxoff < xpsst alarm[1] = -1

if !instance_exists(objRadicalMan) instance_destroy()