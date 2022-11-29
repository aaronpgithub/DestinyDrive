if sprite_index = sprWastelandBullyWhistle
{
instance_create(x - 30, y - 50, objWeakSpawn)
instance_create(x - 30, y + 70, objWeakSpawn)
image_speed = 0.2
sprite_index = sprWastelandBully
alarm[0] = room_speed * 5
}

if sprite_index = sprWastelandBullyPotionDrink
{
angry = true
image_speed = 0.2
sprite_index = sprWastelandBully
alarm[0] = 1
}

if sprite_index = sprWastelandBullySwingBack
{
	var chainheadinst;
	
    if angry = false
    {
    chainheadinst = instance_create(x - 29, y - 28, objChainHead);
    }
    else
    {
    chainheadinst = instance_create(x - 29, y - 28, objChainHead);
    instance_create(x - 29, y - 28, objChainHead);
    }
with(chainheadinst)
{
follow = true
}

image_speed = 0;
sprite_index = sprWastelandBullySwingForward
}

