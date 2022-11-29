    for(var paramt = instance_number(objParasiteWormBody) - 1; paramt >= 0; paramt--)
    {
        with(instance_find(objParasiteWormBody, paramt))
        {
        t = (paramt + 1) * 28
        depth = objParasiteWorm.depth + (paramt + 2) + 50
        }
    }

amp = objParasiteWorm.amp_lerp