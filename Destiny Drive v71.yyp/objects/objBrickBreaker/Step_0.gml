depth = objPlayer.depth - 2

x = round(x)
y = round(y)

if y < road_y_min or y > road_y_max {
	if y < road_y_min y = road_y_min + 2
	if y > road_y_max y = road_y_max - 2
vert = -(vert)
}

if x < 12 or x > room_width - 12 {
	if x < 12 x = 14
	if x > room_width - 12 x = room_width - 14
horz = -(horz)
hspd = random_range(1, 2)
vspd = random_range(1, 2)
}

y += vspd * vert

x += hspd * horz

if damage != 0 alarm[0] = 15

x = round(x)
y = round(y)