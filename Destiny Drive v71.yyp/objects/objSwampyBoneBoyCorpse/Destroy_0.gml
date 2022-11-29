if x < 320 and x > 0
{
    repeat(5)
    {
    var inst;
    inst = instance_create(x, y, objGiblet)
        
        with(inst)
        {
        image_index = 1
        }
    }
}

