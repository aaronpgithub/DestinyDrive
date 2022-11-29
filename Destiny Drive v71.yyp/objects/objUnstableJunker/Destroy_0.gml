event_inherited()

for(var k = ds_list_size(global.character_trait); k > -1; k--)
{
    if ds_list_find_value(global.character_trait, k) = "protect the young"
    {
        var inst2 = instance_create(x, y, objFriendlyJunkerCorpse)
        
        with(inst2)
        {
        sprite_index = sprUnstableJunkerDestroyed
        }
        
        repeat(irandom_range(8, 12))
        {
        var unstable_junk_inst = instance_create(x, y, objBullet)
        
            with(unstable_junk_inst)
            {
            angle = random_range(-15, 15)
            spd = random_range(3, 5) * global.enemy_spd
            damage = 10 * global.dmg
            image_angle = angle
            sprite_index = sprShifterBullet
            }
        }
        exit;
    }
}
    
            var inst_junk = instance_create(x, y, objJunkerCorpse)
        
        with(inst_junk)
        {
        sprite_index = sprUnstableJunkerDestroyed
        spd = 7
        }
        
        repeat(irandom_range(8, 12))
        {
        var unstable_junk_inst = instance_create(x, y, objEnemyBullet)
        
            with(unstable_junk_inst)
            {
            angle = random_range(-15, 15)
            spd = -(random_range(3, 5)) * global.enemy_spd
            image_angle = angle
            sprite_index = sprShifterBullet
            }
            
            champion_bullet(unstable_junk_inst)
        }

