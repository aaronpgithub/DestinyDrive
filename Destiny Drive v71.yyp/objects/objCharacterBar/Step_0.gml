if global.menu = "char_select"
{
    if objArtifactsPullDown.pulled_down = false
    {
    y = lerp(y, 0, 0.1)
    }
    else
    {
    y = lerp(y, -96, 0.1)
    }
}
else
{
y = lerp(y, -96, 0.1)
}


switch(global.character)
{
case 0: //Pip
global.player_name = "PIP"
global.player_desc = "A timid little monster."

global.character_trait_name1 = "PITY"
global.character_trait_desc1 = "Shop prices are lowered."

global.character_trait_name2 = "SHUFFLER"
global.character_trait_desc2 = "Randomize items on the ground for 10 coins."

global.player_hp = 20
/*
global.player_dmg = 5
global.player_acc = 5
global.player_fir = 5
global.player_spd = 5
global.player_lck = 5
*/
global.player_wep = 0
global.player_item1 = 15
global.player_item2 = 0
break;

case 1: //Turf
global.player_name = "TURF"
global.player_desc = "A speechless golem created by gods."

global.character_trait_name1 = "LOCK AND LOAD"
global.character_trait_desc1 = "Carry two weapons."

global.character_trait_name2 = "QUICKDRAW"
global.character_trait_desc2 = "Switch between the weapons."

global.player_hp = 18
global.player_wep = 4
global.player_item1 = 0
global.player_item2 = 0
break;

case 2: //Spice
global.player_name = "SPICE"
global.player_desc = "The ghost of a rich trader."

global.character_trait_name1 = "KARMA"
global.character_trait_desc1 = "Increased luck."

global.character_trait_name2 = "VIP CUSTOMER"
global.character_trait_desc2 = "Call back the shop to come next round. Can only use once in a level."

global.player_hp = 24
global.player_wep = 8
global.player_item1 = 0
global.player_item2 = 0
break;

case 3: //Alien
global.player_name = "ALIEN"
global.player_desc = "A stranded child who just wants to go home."

global.character_trait_name1 = "STORAGE COMPARTMENT"
global.character_trait_desc1 = "Carry two use items."

global.character_trait_name2 = "INTERCHANGABLE"
global.character_trait_desc2 = "Switch between use items."

global.player_hp = 12
global.player_wep = 7
global.player_item1 = 4
global.player_item2 = 0
break;

case 4: //Noodle
global.player_name = "NOODLE"
global.player_desc = "A baby bird who is 4 hours old."

global.character_trait_name1 = "HIDE IN THE SHELL"
global.character_trait_desc1 = "Get a few moments of invincibility after being damaged."

global.character_trait_name2 = "FEAR"
global.character_trait_desc2 = "Higher firerate, lower accuracy."

global.player_hp = 10
global.player_wep = 9
global.player_item1 = 0
global.player_item2 = 0
break;

case 5: //Criminal
global.player_name = "CRIMINAL"
global.player_desc = "You never saw him, okay?"

global.character_trait_name1 = "INTIMIDATION"
global.character_trait_desc1 = "Less waves."

global.character_trait_name2 = "ESCAPE PLAN"
global.character_trait_desc2 = "Use a smoke bomb and become invincible for 3 seconds. Regain smoke bomb by collecting care packages."

global.player_hp = 17
global.player_wep = 2
global.player_item1 = 3
global.player_item2 = 0
break;

case 6: //Bone Boy
global.player_name = "BONE BOY"
global.player_desc = "A little monster who lost his parents."

global.character_trait_name1 = "PARENTAL INSTINCT"
global.character_trait_desc1 = "Bone Boy enemies do not damage you. Instead, they attack enemies."

global.character_trait_name2 = "PROTECT THE YOUNG"
global.character_trait_desc2 = "Two bone boys come to your aid."

global.player_hp = 14
global.player_wep = 5
global.player_item1 = 16
global.player_item2 = 17
break;

case 7: //Dastardly Devil
global.player_name = "DASTARDLY DEVIL"
global.player_desc = "A demon sent by the lords of darkness."

global.character_trait_name1 = "SOUL COLLECTER"
global.character_trait_desc1 = "Killing enemies fills a meter. Once filled, you get a stat bonus. If damaged, you lose meter progress."

global.character_trait_name2 = "SHADOW MANIPULATOR"
global.character_trait_desc2 = "Teleport to the mouse point. Recharges for 10 seconds."

global.player_hp = 11
global.player_wep = 17
global.player_item1 = 12
global.player_item2 = 0
break;

case 8: //Dyna-Mike
global.player_name = "DYNA-MIKE"
global.player_desc = "He's done with life, and he wants to go out with a bang."

global.character_trait_name1 = "GUNPOWDER BLOOD"
global.character_trait_desc1 = "At half HP, send out a dangerous explosion. Can only happen once a level."

global.character_trait_name2 = "MEMORIES"
global.character_trait_desc2 = "On death, get 1 HP and 1 cannonball. If you finish the wave with the single cannonball shot, you get max HP. Can only do once per game."

global.player_hp = 12
global.player_wep = 12
global.player_item1 = 0
global.player_item2 = 0
break;

case 9: //Disease
global.player_name = "DISEASE"
global.player_desc = "A disgusting poisonous mushroom!"

global.character_trait_name1 = "TOXICITY"
global.character_trait_desc1 = "Lose 1 HP per turn, cannot kill you. In return, enemies have less HP."

global.character_trait_name2 = "SLUDGE"
global.character_trait_desc2 = "Slower shot speed."

global.player_hp = 45
global.player_wep = 23
global.player_item1 = 0
global.player_item2 = 0
break;

case 10: //Spirit of Despair
global.player_name = "SPIRIT OF DESPAIR"
global.player_desc = "There is no hope for this sad creature..."

global.character_trait_name1 = "SPIRIT"
global.character_trait_desc1 = "You have 1 HP, and cannot get anymore."

global.character_trait_name2 = "DESPAIR"
global.character_trait_desc2 = "Death hovers over you..."

global.player_hp = 1
global.player_wep = 1
global.player_item1 = 78
global.player_item2 = 0
break;

case 11: //Rando Obbles
global.player_name = "RANDO OBBLES"
global.player_desc = "Rando here!!"

global.character_trait_name1 = "RANDO!"
global.character_trait_desc1 = "Get a random passive item and a random weapon."

global.character_trait_name2 = "RANDO AGAIN!!"
global.character_trait_desc2 = "Get a random passive, a random active, or nothing at all."

global.player_hp = "Random!"
global.player_wep = irandom(sprite_get_number(sprGun) - 1)
global.player_item1 = irandom(sprite_get_number(sprItem) - 1)
global.player_item2 = irandom(sprite_get_number(sprItem) - 1)
break;

case 12: //Ninja
global.player_name = "NINJA"
global.player_desc = "Studies the blade."

global.character_trait_name1 = "LOYALTY TO THE SWORD"
global.character_trait_desc1 = "You can't change weapons."

global.character_trait_name2 = "THROWING KNIVES"
global.character_trait_desc2 = "Get the ability to throw a knife every 10 seconds. The cooldown resets on hit."

global.player_hp = "5"

global.player_wep = 40
global.player_item1 = 0
global.player_item2 = 0
break;

case 13: //Techie
global.player_name = "TECHIE"
global.player_desc = "Died long ago..."

global.character_trait_name1 = "COPY PASTE"
global.character_trait_desc1 = "When not on a boss or miniboss wave, give your weapon to your turret."

global.character_trait_name2 = "BLOOD HACK"
global.character_trait_desc2 = "On a boss or miniboss wave, give a quarter of your HP to gain a chance of a second item. Can use multiple times to stack."

global.player_hp = "15"
global.player_wep = 0
break;

case 14: //Munchy
global.player_name = "MUNCHY"
global.player_desc = "Pickup hoarder!"

global.character_trait_name1 = "Whats your favorite flavor?"
global.character_trait_desc1 = "Choose what pickup you get."

global.character_trait_name2 = "Do you do you got like pickups?"
global.character_trait_desc2 = "Get more pickups."

global.player_hp = "15"
global.player_wep = 0
break;
}

/* */
/*  */
