if instance_exists(objGamblingMachine)
{
    if objGamblingMachine.your_chance > objGamblingMachine.chance
    {
    objGamblingRoll.image_index = objGamblingMachine.img
        with(instance_find(objGamblingRoll, 1))
        {
        inst = instance_create(objGamblingDispense.x, objGamblingDispense.y, objGamblingWin)
            with(inst)
            {
            image_index = objGamblingMachine.img
            }
        }
    }
}

