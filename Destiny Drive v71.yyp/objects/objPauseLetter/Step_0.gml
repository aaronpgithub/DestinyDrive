if alarm[0] <= 0 {

    if y > dest_y and sign(spd_max) != -1 spd_max = -(spd_max * 0.5)
    if y < dest_y and sign(spd_max) != 1 spd_max = -(spd_max * 0.5)

    spd = lerp(spd, spd_max, 0.3)
    
y += spd
}

if !instance_exists(objPauseControl)
{
instance_destroy()
}

