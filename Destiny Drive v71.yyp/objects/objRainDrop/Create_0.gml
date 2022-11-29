if global.wave < objGameControl.storm - 2 {
    if y < -400 instance_destroy()
}

if global.wave < objGameControl.storm - 1 {
    if y < -500 instance_destroy()
}

if global.wave >= objGameControl.storm {
    if y < -550 instance_destroy()
}

spd = 9
image_speed = 0
death = road_y_min + random_range(10, 179)

