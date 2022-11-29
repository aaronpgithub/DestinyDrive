x_t += 3
y_t += 3

if instance_exists(objPixieStorm)
{
        if objPixieStorm.attack_choice = 2
        {
        x_t += 1
        y_t += 1
        }
    
    x = (objPixieStorm.x - (sprite_get_width(objPixieStorm.mask_index) / 2) ) + (x_amp * sin(degtorad(x_t)))
    y = (objPixieStorm.y - (sprite_get_height(objPixieStorm.mask_index) / 2) ) + (y_amp * sin(degtorad(y_t)))
    
    if objPixieStorm.image_alpha = 0
    {
        if image_alpha > 0
        {
        image_alpha -= 0.1
        }
    }
    else
    {
        if image_alpha < 1
        {
        image_alpha += 0.1
        }
    }
}
else
{
instance_destroy()
}

