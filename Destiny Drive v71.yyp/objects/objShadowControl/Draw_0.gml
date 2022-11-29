//surface_shadow is drawn under ebbything
draw_set_alpha(0.3)

    if surface_exists(global.surface_shadow)
    {
    draw_surface(global.surface_shadow, 0, 0)
    
    surface_set_target(global.surface_shadow)

    draw_clear_alpha(0, 0)
    
    surface_reset_target()
    }
    else
    {
    global.surface_shadow = surface_create(room_width, room_height)
    }

draw_set_alpha(1)

