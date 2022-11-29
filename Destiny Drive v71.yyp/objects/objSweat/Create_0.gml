if objPlayer.antsy_sweat = false {
sweat_angle = -random_range(180, 230)
sweat_angle_speed = random_range(3, 4)
sweat_speed = 4
} else {
sweat_angle = random_range(180, 230)
sweat_angle_speed = -(random_range(3, 4))
sweat_speed = -4
}

alarm[0] = 5

