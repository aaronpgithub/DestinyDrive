var inst;

image_speed = 0
objGamblingMachine.gamble = false

with(instance_find(objBuyButton, 3))
{
image_index = 0
}


//You win!
if instance_exists(objGamblingMachine)
{
    if objGamblingMachine.your_chance > objGamblingMachine.chance
    {
        with(instance_find(objGamblingRoll, 0))
        {
        image_index = objGamblingMachine.img
        }
        
        with(instance_find(objGamblingRoll, 1))
        {
        image_index = objGamblingMachine.img - 1
        }
        
        with(instance_find(objGamblingRoll, 2))
        {
        image_index = objGamblingMachine.img + 1
        }
    }
}

