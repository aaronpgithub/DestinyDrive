/// @description Insert description here
// You can write your code in this editor

event_inherited()

ruin_direction = "up"
ruin_position = road_y_mid
ruin_x_position = 330
spd = 0.5

t = 0
repeat(10) {
dir_array[t] = choose("up", "down")
t++
}

array_position = 0

for(var ap = 0; ap < 10; ap++) {
	var ups = 0, downs = 0;
	if dir_array[ap] = "up" ups += 1
	if dir_array[ap] = "down" downs += 1
}

ty = 0

repeat(10) {
	var choice = random(1)
	if choice < ups / 10 {
		dir_array_next[ty] = "up"
	} else {
		dir_array_next[ty] = "down"
	}
	ty++
}

alarm[0] = irandom_range(80, 180)

alarm[1] = 1

alarm[2] = 5