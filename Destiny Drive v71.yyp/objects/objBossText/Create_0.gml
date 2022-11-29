image_alpha = 0.01
alarm[0] = room_speed * 1.5
fade_out = false
boss = "[no title]"

if instance_exists(objQueenOfFliesFastMiniboss) or instance_exists(objQueenOfFliesStrongMiniboss)
{
instance_destroy()
}

switch(objBossParent.object_index)
{
//Wasteland
case objBanditCaravan:
boss = "MUTT & FRIENDS"
break;
case objKingBubbs:
boss = "KING BUBBS"
break;
case objUFO:
boss = "UFO"
break;
case objWastelandBully:
boss = "WASTELAND BULLY"
break;
case objBoarHerder:
boss = "BOAR HERDER"
break;
case objNeighborhoodGang:
boss = "NEIGHBORHOOD GANG"
break;
//

//Swamp
case objSpookyScott:
boss = "SPOOKY SCOTT"
break;
case objParasiteWorm:
boss = "PARASITE QUEEN"
break;
case objThePlague:
boss = "THE PLAGUE"
break;
case objTheMutantTank:
boss = "THE MUTANT"
break;
case objEyeOfTheStorm:
boss = "EYE OF THE STORM"
break;
case objFlyingFish:
boss = "FLYING FISH"
break;
//

//Forest
case objCarriageOfIllusion:
boss = "THE ILLUSION"
break;
case objNaturesBane:
boss = "NATURE'S BANE"
break;
case objPixieStorm:
boss = "PIXIE STORM"
break;
case objDeadWood:
boss = "DEAD WOOD"
break;
case objHorrorApparition:
boss = "HORROR APPARITION"
break;
case objTheHunter:
boss = "THE HUNTER"
break;
//

//Volcano
case objQueenOfFlies:
boss = "QUEEN OF FLIES"
break;
case objTankOfFlame:
boss = "TANK OF FLAME"
break;
case objGorgan:
boss = "GORGAN"
break;
case objFireMage:
boss = "FIRE MAGE"
break;

//Snow
case objAnarchistOfTime:
boss = "ANARCHIST OF TIME"
break;
case objDeathGang:
boss = "DEATH GANG"
break;
//

//City
case objMilitaryWeaponry:
boss = "MILITARY WEAPONRY"
break;
case objRadicalMan:
boss = "RADICAL MAN"
break;
//

//Ocean
case objKingBorbs:
boss = "KING BORBS"
break;
//

//Temple
case objTombOfShri:
boss = "TOMB OF SHRI"
break;
case objPyramid:
boss = "PYRAMID"
break;
//

//Edge
case objTheGlitch:
boss = "THE GLITCH"
break;
case objSpiritStorm:
boss = "SPIRIT STORM"
break;
//

//Hell
case objSatan:
boss = "SATAN"
break;
//
}

