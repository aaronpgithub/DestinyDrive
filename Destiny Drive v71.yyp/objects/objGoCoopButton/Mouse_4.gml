event_inherited()

objGlobalControl.coop = true

if global.menu = "char_select"
{
    switch(global.character2)
    {
    case 0:
    global.player2 = sprPlayer
    break;
    case 1:
    global.player2 = sprPlayerTurf
    break;
    case 2:
    global.player2 = sprPlayerSpice
    break;
    case 3:
    global.player2 = sprPlayerAlien
    break;
    case 4:
    global.player2 = sprPlayerNoodle
    break;
    case 5:
    global.player2 = sprPlayerCriminal
    break;
    case 6:
    global.player2 = sprPlayerBoneBoy
    break;
    case 7:
    global.player2 = sprPlayerDastardlyDevil
    break;
    case 8:
    global.player2 = sprPlayerDynaMike
    break;
    case 9:
    global.player2 = sprPlayerDisease
    break;
    case 10:
    global.player2 = sprPlayerSpiritOfDespair
    break;
    }
}

