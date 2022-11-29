spd = 3
image_alpha = 0
light_alpha = 0

R = 242
G = 239
B = 121

colll = make_colour_rgb(R, G, B)

    with(instance_find(objForestFarthestBackground, 0))
    {
    x = 0
    }
    
    with(instance_find(objForestFarthestBackground, 1))
    {
    x = 320
    }
    
    with(instance_find(objForestFarthestBackground, 2))
    {
    x = 640
    }
    
    image_alpha = 1
    light_alpha = 1

sprite_index = sprForestFarthestBackground
transition = -2


event_inherited()



