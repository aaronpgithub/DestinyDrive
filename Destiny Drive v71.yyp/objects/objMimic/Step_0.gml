event_inherited()

if y_pos < 75
{
vert_dir = "down"
}

if y_pos > 240
{
vert_dir = "up"
}

switch(vert_dir)
{
case "up":
y_pos -= 3
break;

case "down":
y_pos += 3
break;
}

y = y_pos
x = lerp(x, 280, 0.5)


