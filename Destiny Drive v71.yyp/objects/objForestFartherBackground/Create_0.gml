spd = 5
image_alpha = 0
light_alpha = 0


R = 242
G = 239
B = 121

colll = make_colour_rgb(R, G, B)


    with(instance_find(objForestFartherBackground, 0))
    {
    x = 0
    }
    
    with(instance_find(objForestFartherBackground, 1))
    {
    x = 320
    }
    
    with(instance_find(objForestFartherBackground, 2))
    {
    x = 640
    }
    
    image_alpha = 1
    light_alpha = 0.5

sprite_index = sprForestFartherBackground
transition = -2


event_inherited()

