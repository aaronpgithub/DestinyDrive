event_inherited()

	if global.player = sprPlayerBoneBoy {
	    var inst = instance_create(x, y, objFriendlyJunkerCorpse)
        
	    with(inst)
	    {
	    sprite_index = sprPsychicBoneBoySuprised
	    angle = point_direction(x, y, instance_furthest(x, y, objEnemyParent).x, instance_furthest(x, y, objEnemyParent).y)
	    image_yscale = -1
	    found = true
	    }
	} else {
    instance_create(x, y, objPsychicBoneBoyCorpse)
    }

repeat(irandom_range(4, 5))
{
instance_create(x, y, objSmoke)
}

