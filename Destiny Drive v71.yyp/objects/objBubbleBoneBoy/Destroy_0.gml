event_inherited()

for(var k = ds_list_size(global.character_trait); k > -1; k--)
{
    if ds_list_find_value(global.character_trait, k) = "protect the young"
    {
        instance_create(x, y, objFriendlyJunkerCorpse)
    exit;
    }
}

    var dodod = instance_create(x, y, objJunkerCorpse)
    
        with(dodod)
        {
        spd = 4
		sprite_index = sprBubbleBoneBoyDestroyed
		bubble = true
        }

