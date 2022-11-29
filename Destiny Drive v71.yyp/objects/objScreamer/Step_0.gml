if dest = true image_alpha -= 0.1

if image_alpha < 0 or !instance_exists(objEnemyParent)
{
instance_destroy()
}

