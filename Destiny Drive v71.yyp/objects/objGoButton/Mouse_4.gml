if global.menu = "char_select"
{
    switch(global.character)
    {
    case 0:
    global.player = sprPlayer
    break;
    case 1:
    global.player = sprPlayerTurf
    break;
    case 2:
    global.player = sprPlayerSpice
    break;
    case 3:
    global.player = sprPlayerAlien
    break;
    case 4:
    global.player = sprPlayerNoodle
    break;
    case 5:
    global.player = sprPlayerCriminal
    break;
    case 6:
    global.player = sprPlayerBoneBoy
    break;
    case 7:
    global.player = sprPlayerDastardlyDevil
    break;
    case 8:
    global.player = sprPlayerDynaMike
    break;
    case 9:
    global.player = sprPlayerDisease
    break;
    case 10:
    global.player = sprPlayerSpiritOfDespair
    break;
    case 11:
    global.player = sprPlayerRandoObbles
    break;
    case 12:
    global.player = sprPlayerNinja
    break;
    case 13:
    global.player = sprPlayerTechie
    break;
    case 14:
    global.player = sprPlayerMunchy
    break;
    }
}

character_traits()

if !instance_exists(objFade)
{
instance_create(0, 0, objFade)
}

