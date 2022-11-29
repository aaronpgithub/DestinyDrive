if instance_exists(objGamblingMachine)
{
x = objGamblingMachine.x - 1
y = objGamblingMachine.y - 1
}

if instance_exists(objGamblingWin)
{
    if objGamblingWin.image_index != 4
    {
    image_speed = 0.5
    }
    else
    {
    image_speed = 0.2
    }
}
else
{
image_speed = 0.2
}

