if !instance_exists(objGameBeginFade) and objChangelog.open = false
{
    global.menu = "challenges"
    
    instance_create_layer(250, 200, "Challenge", objChallengeGoButton)
    
    for(var i = 0; i < 7; i++)
    {
    inst = instance_create_layer(10, 300, "Challenge", objChallengeText)
    
        with(inst)
        {
        pos = 10 + (instance_number(objChallengeText) * 20)
        ID = instance_number(objChallengeText)
            switch(instance_number(objChallengeText))
            {
            case 1:
            string_chal = "Wimp"
            break;
            case 2:
            string_chal = "Loyalty"
            break;
            case 3:
            string_chal = "Gauntlet"
            break;
            case 4:
            string_chal = "Health Leak"
            break;
            case 5:
            string_chal = "Boom Dude"
            break;
            case 6:
            string_chal = "Golden Veins"
            break;
            case 7:
            string_chal = "Pacifist"
            break;
            }
        }
    }
}

