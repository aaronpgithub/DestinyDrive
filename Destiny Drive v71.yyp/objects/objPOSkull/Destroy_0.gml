event_inherited()

for(var k = ds_list_size(global.character_trait); k > -1; k--)
{
    if ds_list_find_value(global.character_trait, k) = "protect the young"
    {
        instance_create(x, y, objFriendlyJunkerCorpse)
    
        repeat(irandom_range(4, 5))
        {
        instance_create(x, y, objSmoke)
        }
    exit;
    }
}

	instance_create(mid_x, mid_y, objPoSkullLaser)
    
    repeat(irandom_range(4, 5))
    {
    instance_create(x, y, objSmoke)
    }


