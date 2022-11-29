if instance_exists(objEnemyParent)
{
    var quick = instance_nearest(x, y, objEnemyParent)
    
    //the number on the end is the only nuber you should care about, it is the range of which the pickup eater feels it needs to be in to shoot the dude

    if y < (quick.y - ( sprite_get_height(quick.mask_index) / 2 ) ) - 8
    {
    y += 3
    }
    
    if y > (quick.y - ( sprite_get_height(quick.mask_index) / 2 ) ) + 8
    {
    y -= 3
    }
    
    if y < (quick.y - ( sprite_get_height(quick.mask_index) / 2 ) ) + 8 and y > (quick.y - ( sprite_get_height(quick.mask_index) / 2 ) ) - 8
    {
    //do the do
    }
    else
    {
    alarm[0] = 25
    }
}
else
{
alarm[0] = 25
}

image_xscale = lerp(image_xscale, 1, 0.3)
image_yscale = lerp(image_yscale, 1, 0.3)

image_index = level - 1

if eaten >= 10
{
    if level < 3
    {
    level += 1
    }
    
eaten = 0
}

