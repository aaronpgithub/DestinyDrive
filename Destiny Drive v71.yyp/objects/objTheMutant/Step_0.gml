if instance_exists(objTheMutantTank)
{
x = objTheMutantTank.x - 22
y = objTheMutantTank.y - objTheMutantTank.sprite_height
}
else
{
instance_destroy()
}

