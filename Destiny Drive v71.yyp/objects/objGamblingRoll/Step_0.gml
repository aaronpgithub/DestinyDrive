if instance_exists(objGamblingMachine)
{
    if objGamblingMachine.gamble = true
    {
    image_index = irandom(image_number)
    
        if ds_map_exists(global.item_map, "gamble_charm")
        {
        image_index = irandom(image_number - 1)
        }
    }
}

