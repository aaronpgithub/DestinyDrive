if instance_number(objFadeAway) > 300 {
with(objBackground) instance_destroy()

with(objRoad) instance_destroy()

    with(objFadeAway) {
        if image_yscale = 1
        {
        image_yscale = -1
        }
    }
    
    reverse = true
}

if reverse = false alarm[11] = 120

