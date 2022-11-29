if x < 0
{
    with(objBuyButton)
    {
    instance_destroy()
    }
    
    with(objExitButton)
    {
    instance_destroy()
    }
    if global.level != "final" global.wave += 1
    
    if objGameControl.second_shop = false
    {
    objGameControl.second_shop = true
    }
    
instance_destroy()
}

