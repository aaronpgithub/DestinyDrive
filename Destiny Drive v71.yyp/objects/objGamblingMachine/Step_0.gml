event_inherited()

//changing position of the gambling roll
if instance_exists(objGamblingRoll)
{
    with(instance_find(objGamblingRoll, 0))
    {
    x = objGamblingMachine.x - 9
    y = objGamblingMachine.y - 10
    }
    
    with(instance_find(objGamblingRoll, 1))
    {
    x = objGamblingMachine.x - 1
    y = objGamblingMachine.y - 10
    }
    
    with(instance_find(objGamblingRoll, 2))
    {
    x = objGamblingMachine.x + 7
    y = objGamblingMachine.y - 10
    }
}
///////////////////////////////////////////

//img is the image that is shown on the rolls, and also depicts what you win!
if img = 3 and global.use_itm[0] < 0
{
    if ds_map_exists(global.item_map, "gamble_charm")
    {
    img = irandom(3)
    }
    else
    {
    img = irandom(4) //img 4 is a stat down, all the others are good stuff!
    }
}


