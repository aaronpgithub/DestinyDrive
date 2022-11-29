event_inherited()

    if gamepad_is_connected(0)
    {
    gamepad_control()
    }
    else
    {
    keyboard_control()
    }
    
    if global.hp <= 0
    {
    image_index = global.character2
    }
    
    if instance_exists(objShop) or instance_exists(objItem)
    {
    x = 20
    }

