spd = 7
image_alpha = 0
light_alpha = 0

R = 242
G = 239
B = 121

colll = make_colour_rgb(R, G, B)

    with(instance_find(objForestBackground, 0))
    {
    x = 0
    }
    
    with(instance_find(objForestBackground, 1))
    {
    x = 320
    }
    
    with(instance_find(objForestBackground, 2))
    {
    x = 640
    }
    
    light_alpha = 0.35
sprite_index = sprForestBackground
transition = -2
image_alpha = 1


event_inherited()


