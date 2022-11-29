if !instance_exists(objIllusionLaserStart)
{
instance_destroy()
}

if !instance_exists(objCarriageOfIllusion)
{
instance_destroy()
}

if instance_exists(objIllusionLaserStart)
{
    if objIllusionLaserStart.fade = true
    {
    image_alpha -= 0.1
    }
}
else
{
instance_destroy()
}

if image_alpha <= 0
{
instance_destroy()
}

