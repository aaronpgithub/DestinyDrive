if sprite_index = sprGrapeCarrier
{
    if instance_exists(objKnight)
    {
    x = lerp(x, objKingBubbs.x - 25, 0.005)
    y = lerp(y, objKingBubbs.y - 60, 0.005)
    }
    else
    {
    x = lerp(x, xstart + 60, 0.01)
    y = lerp(y, ystart + 60, 0.01)
    }
}
else
{
x = lerp(x, xstart + 60, 0.01)
y = lerp(y, ystart + 60, 0.01)
}

if instance_exists(objKingBubbs)
{
    if objKingBubbs.alarm[0] < 60 and instance_exists(objKnight)
    {
    sprite_index = sprGrapeCarrierDrop
    
        if objKingBubbs.alarm[0] = 59
        {
        instance_create(x, y, objGrape)
        }
    }
    
    if objKingBubbs.alarm[0] >= 60 and !instance_exists(objKnight)
    {
        x = lerp(x, xstart, 0.01)
        y = lerp(y, ystart, 0.01)
    }
}

if x > 340
{
if sprite_index = sprGrapeCarrierDrop
{
instance_destroy()
}


    if !instance_exists(objKnight)
    {
    instance_destroy()
    }
    
    if instance_exists(objKingBubbs)
    {
        if objKingBubbs.attack_choice != 4
        {
        instance_destroy()
        }
    }
    else
    {
    instance_destroy()
    }
}

