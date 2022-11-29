function use_item_string() {
	//USE ITEMS
	            switch(buy_id)
	            {
	            case 0: //War Horn
	            global.shop_string = "WAR HORN - A few seconds of extra damage."
	            break;
	            case 1: //Magic Clock
	            global.shop_string = "MAGIC CLOCK - Slow down enemy bullets for a short time."
	            break;
	            case 2: //Fireworks
	            global.shop_string = "FIREWORKS - Send out a rocket barrage."
	            break;
	            case 3: //King Midas' Finger
	            global.shop_string = "KING MIDAS' FINGER - Use 1 token to get increased damage for the level."
	            break;
	            case 4: //EMP
	            global.shop_string = "EMP - Destroy all bullets on screen."
	            break;
	            case 5: //Super Bomb
	            global.shop_string = "SUPER BOMB - Throw a bomb that does massive damage."
	            break;
	            case 6: //Blood Contract
	            global.shop_string = "BLOOD CONTRACT - Destroy all enemies and bullets, but take damage."
	            break;
	            case 7: //Roll of Bandages
	            global.shop_string = "ROLL OF BANDAGES - Heal for 2 HP."
	            break;
	            case 8: //Sheild Generator
	            global.shop_string = "SHIELD GENERATOR - Get 2 shields."
	            break;
	            case 9: //Spiral Gun
	            global.shop_string = "SPIRAL GUN - Shoot a huge spiral of bullets."
	            break;
	            case 10: //Impatience
	            global.shop_string = "IMPATIENCE - Go straight to the boss wave."
	            break;
	            case 11: //Distress Signal
	            global.shop_string = "DISTRESS SIGNAL - Get a turret buddy for 3 rounds."
	            break;
	            case 12: //Brother Shadow
	            global.shop_string = "BROTHER SHADOW - Shoot an extra bullet for a short time."
	            break;
	            case 13: //Energy Drink
	            global.shop_string = "ENERGY DRINK - Faster firerate for a short time."
	            break;
	            case 14: //Flashbang
	            global.shop_string = "FLASHBANG - Freezes bullets around you for a short time."
	            break;
	            case 15: //Vitamins
	            global.shop_string = "VITAMINS - Get a stat up for the wave."
	            break;
	            case 16: //Helping Hand
	            global.shop_string = "HELPING HAND - Create a hand that gathers up enemy bullets in front of you, and throws them back at the enemy."
	            break;
	            case 17: //Water Bottle
	            global.shop_string = "WATER BOTTLE - Get max HP. Can only be used once."
	            break;
	            case 18: //Bullet Portal
	            global.shop_string = "BULLET PORTAL - Create a portal that shoots out your bullets from a different position."
	            break;
	            case 19: //Sniper Support
	            global.shop_string = "SNIPER SUPPORT - Finds the strongest enemy and kills it."
	            break;
	            case 20: //Healing Gland
	            global.shop_string = "HEALING GLAND - Gives 1 HP for each enemy killed. How could you?"
	            break;
	            case 21: //Essence of Greed
	            global.shop_string = "ESSENCE OF GREED - Take everything from the shop for free. Can only be used once."
	            break;
	            case 22: //AimBot
	            global.shop_string = "AIMBOT - Get homing shots for the round."
	            break;
	            case 23: //Silver Bullet
	            global.shop_string = "SILVER BULLET - Make your next bullet do massive damage."
	            break;
	            case 24: //Die
	            global.shop_string = "DIE - Reroll your weapon."
	            break;
	            case 25: //Blizzard
	            global.shop_string = "BLIZZARD - Freeze all enemies."
	            break;
	            case 26: //Pot Of Gold
	            global.shop_string = "POT O' GOLD - Temporary huge luck up."
	            break;
				case 27: //Essence of Rest
	            global.shop_string = "ESSENCE OF REST - Charge up your next bullet to do more damage, but stand still."
	            break;
				case 28: //Present
	            global.shop_string = "PRESENT - Spawn a chest."
	            break;
				case 29: //Powerful Powershield
	            global.shop_string = "POWERFUL POWERSHIELD - Reusable powershield!"
	            break;
				case 30: //Nuke
	            global.shop_string = "NUKE - Do massive damage to all enemies. Takes a while to charge!"
	            break;
				case 31: //Portable Button
	            global.shop_string = "PORTABLE BUTTON - Reroll items, for a price!"
	            break;
				case 32: //Redo
	            global.shop_string = "REDO - Retry a wave!"
	            break;
				case 33: //Morphine
	            global.shop_string = "MORPHINE - Get free hits for a wave! Costs HP."
	            break;
				case 34: //Shield Converter
	            global.shop_string = "SHIELD CONVERTER - Converts shields into powershields."
	            break;
				case 35: //Powershield Converter
	            global.shop_string = "POWERSHIELD CONVERTER - Converts powershields into shields."
	            break;
				case 36: //Blender
	            global.shop_string = "BLENDER - Convert HP into shields."
	            break;
				case 37: //Essence of Pampering
	            global.shop_string = "ESSENCE OF PAMPERING - Get all of the pickups in the level right now."
	            break;
				case 38: //Demonic Gift
	            global.shop_string = "DEMONIC GIFT - On activation, the next wave will visually change, and you will get a damage up."
	            break;
				case 39: //Death's Cup
	            global.shop_string = "DEATH'S CUP - Take damage to get more item choices from a boss."
	            break;
				case 40: //Faulty Powershield
	            global.shop_string = "FAULTY POWERSHIELD - Parry bullets!"
	            break;
				case 41: //Big Chunk
	            global.shop_string = "BIG CHUNK - Throw a chunk of metal. Long charge."
	            break;
				case 42: //Small Chunk
	            global.shop_string = "SMALL CHUNK - Throw a chunk of metal. Small charge."
	            break;
				case 43: //Garnet
	            global.shop_string = "GARNET - Damage up."
	            break;
				case 44: //Jade
	            global.shop_string = "JADE - Luck up."
	            break;
				case 45: //Topaz
	            global.shop_string = "TOPAZ - Shot speed up."
	            break;
				case 46: //Aquamarine
	            global.shop_string = "AQUAMARINE - Accuracy up."
	            break;
				case 47: //Amber
	            global.shop_string = "AMBER - Fire rate up."
	            break;
				case 48: //Demon Altar
	            global.shop_string = "DEMON ALTAR - Take damage, spawn a pickup."
	            break;
				case 49: //Destruction
	            global.shop_string = "DESTRUCTION - Huge bullets shoot at enemies, also damage you!"
	            break;
				case 50: //Hungry Bullets
	            global.shop_string = "HUNGRY BULLETS - Shoot bullets that eat enemy bullets to deal more damage."
	            break;
				case 51: //Chef Werty
	            global.shop_string = "CHEF WERTY - Hold right click to give him pickups!"
	            break;
	            }

        



}
