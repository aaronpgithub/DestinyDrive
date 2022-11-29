event_inherited()

if move = true
{
x = pos_x
y = pos_y

pos_x -= 3
	if x > 80 {
		if y < objPlayer_y - 5 pos_y += 1
		if y > objPlayer_y + 5 pos_y -= 1
	}
}

if x < -10 pos_x = 345