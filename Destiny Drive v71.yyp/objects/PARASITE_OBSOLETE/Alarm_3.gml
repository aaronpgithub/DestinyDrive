/// @description acid wall
alarm[3] = 80

for(var parwallx = 1; parwallx >= 0; parwallx--)
{
    var bulletdeath = irandom(10)

    for(var parwally = 10; parwally >= 0; parwally--)
    {
        if bulletdeath != parwally
        {
            var parwallbul = instance_create(-10 + (330 * parwallx), 68 + (16 * parwally), objParasiteWormShot)
        
            with(parwallbul)
            {
            angle = 0
            spd = (1 + (-2 * parwallx)) * global.enemy_spd
            damage = 1
            }
        }
    }
}

