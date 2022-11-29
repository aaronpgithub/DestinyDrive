event_inherited()

if global.player = sprPlayerBoneBoy {
    var dododha2 = instance_create(x, y, objFriendlyJunkerCorpse)
        
    with(dododha)
    {
    sprite_index = sprIceJunkerDestroyed
    }
} else {

    var dododha = instance_create(x, y, objJunkerCorpse)
    
        with(dododha)
        {
        damage = 10
        spd = 0.4
        sprite_index = sprIceJunkerDestroyed
        }
}
