 /// @description Insert description here
// You can write your code in this editor

starterweps = ds_list_create()

ds_list_add(starterweps, "pistol", "flak_pistol", "bolt")

xoff = 0
yoff = 0

image_speed = 0

circ_hover = false

ID = instance_number(objWeaponCircle)

weapon_type = ""
split_1 = 0
split_2 = 0
sp1_ID = 0
sp2_ID = 0
ID = 0
ID_layer = 0

for(var h = 0; h <= 10; h++) {
	for(var l = 0; l <= 20; l++) {
		
			var string_array = global.w_tree[h, l];
			var loop_position = 0;
			
		if string_array != "" {
			
			for(var str = 0; str <= string_length(string_array); str++) { 
				if string_char_at(string_array, str) = "," or str = string_length(string_array) {
					switch(loop_position) {
						case 0:
						weapon_type = string_copy(string_array, 0, str - 1)
						string_array = string_delete(string_array, 1, str + 1) //plus 1 is for the space btw info
						str = 0
						loop_position += 1
						break;
						
						case 1:
						split_1 = real(string_copy(string_array, 0, str - 1))
						string_array = string_delete(string_array, 1, str + 1) //plus 1 is for the space btw info
						str = 0
						loop_position += 1
						break;
						
						case 2:
						split_2 = real(string_copy(string_array, 0, str))
						string_array = string_delete(string_array, 1, str + 1) //no plus, no info after
						str = 0
						loop_position += 1
						global.w_tree[h, l] = ""
						ID = l
						ID_layer = h
						break;
					}
				}
			}
			h = 30
			l = 30
		}
	}
}

weapon_index = 0
weapon_name = ""
weapon_desc = ""
#region
switch(weapon_type) {
	case "pistol":
    weapon_index = 0
	weapon_name = "PISTOL"
	weapon_desc = "Starter weapon. Average stats."
    break;
                        
    case "revolver":
    weapon_index = 1
	weapon_name = "REVOLVER"
	weapon_desc = "High damage, low firerate."
    break;
                        
    case "smg":
    weapon_index = 2
	weapon_name = "SMG"
	weapon_desc = "High firerate, low damage."
    break;
                        
    case "hand_eagle":
    weapon_index = 3
	weapon_name = "HAND EAGLE"
	weapon_desc = "Shoots slowly in automatic fire, but clicking for each shot will shoot faster."
    break;
                        
    case "rifle":
    weapon_index = 4
	weapon_name = "RIFLE"
	weapon_desc = "High damage and accuracy, low firerate."
    break;
                        
    case "tommy":
    weapon_index = 5
	weapon_name = "TOMMY GUN"
	weapon_desc = "Extremely high firerate, but very low damage."
    break;
                        
    case "twin":
    weapon_index = 6
	weapon_name = "TWIN SHOT"
	weapon_desc = "Shoot bullets that alternate in angle."
    break;
                        
    case "m17":
	weapon_index = 7
	weapon_name = "M17"
	weapon_desc = "Semi-Automatic. Click to shoot."
    break;
                        
    case "burst":
	weapon_index = 8
	weapon_name = "BURST"
	weapon_desc = "Accurate 3-round burst."
    break;
                        
    case "h_rifle":
    	weapon_index = 9
	weapon_name = "HUNTING RIFLE"
	weapon_desc = "Extremely high damage, but very low firerate."
    break;
                        
    case "wave_gun":
	weapon_index = 10
	weapon_name = "WAVE GUN"
	weapon_desc = "Shoot extremely fast. Bullets are angled in a wave."
    break;
                        
    case "ak_pistol":
	weapon_index = 11
	weapon_name = "AKIMBO PISTOLS"
	weapon_desc = "Shoot a 2-round burst, click to fire."
    break;
                        
    case "triple":
	weapon_index = 12
	weapon_name = "TRIPLE"
	weapon_desc = "Shoot three bullets at once."
    break;
                        
    case "m19":
	weapon_index = 13
	weapon_name = "M19"
	weapon_desc = "Charge shot. Hold down fire to charge damage."
    break;
                        
    case "m_rifle":
	weapon_index = 14
	weapon_name = "MILITARY RIFLE"
	weapon_desc = "4-round burst."
    break;
                        
    case "s_issue":
	weapon_index = 15
	weapon_name = "STANDARD ISSUE"
	weapon_desc = "Rifle."
    break;
                        
    case "s_rifle":
	weapon_index = 16
	weapon_name = "SNIPER RIFLE"
	weapon_desc = "Extremely high damage, very low firerate."
    break;
                        
    case "b_hose":
	weapon_index = 17
	weapon_name = "BULLET HOSE"
	weapon_desc = "Shoot dangerously fast, but inconsistently."
    break;
                        
    case "bounce":
	weapon_index = 18
	weapon_name = "BOUNCE SHOT"
	weapon_desc = "Shoot angled bullets that bounce off the road."
    break;
                        
    case "ak_smg":
	weapon_index = 19
	weapon_name = "AKIMBO SMGS"
	weapon_desc = "Shoot semi-automatic bursts. Quickly shoot to combo into a super blast."
    break;
                        
    case "quad":
	weapon_index = 20
	weapon_name = "QUAD"
	weapon_desc = "Shoot four bullets at once."
    break;
                        
    case "m20":
	weapon_index = 21
	weapon_name = "M20"
	weapon_desc = "Charge shot. Max charge shoots four bullets at once."
    break;
                        
    case "p_burst":
	weapon_index = 22
	weapon_name = "POWER BURST"
	weapon_desc = "Charge up a burst shot. Max charge shoots a 7-round burst."
    break;
                        
    case "ss_issue":
	weapon_index = 23
	weapon_name = "STANDARDIZED STANDARD ISSUE"
	weapon_desc = "Rifle."
    break;
                        
    case "h_sniper":
	weapon_index = 24
	weapon_name = "HEAVY SNIPER"
	weapon_desc = "High damage. Have to rechamber each shot."
    break;
                        
    case "gatling":
	weapon_index = 25
	weapon_name = "GATLING GUN"
	weapon_desc = "Shoot faster and less accurate over time."
    break;
                        
    case "d_bounce":
	weapon_index = 26
	weapon_name = "DOUBLE BOUNCE SHOT"
	weapon_desc = "Shoot two bullets at once that bounce off the road."
    break;
                        
    case "ak_rifle":
	weapon_index = 27
	weapon_name = "AKIMBO RIFLES"
	weapon_desc = "Shoot semi-automatic bursts. Quickly shoot to combo into a super burst."
    break;
                        
    case "arrow":
	weapon_index = 28
	weapon_name = "ARROW"
	weapon_desc = "Shoot five bullets at once in an arrow formation."
    break;
                        
    case "m200":
	weapon_index = 29
	weapon_name = "M200"
	weapon_desc = "Charge shot. Max charge shoots an explosive bullet."
    break;
                        
    case "s_burst":
	weapon_index = 30
	weapon_name = "SUPER BURST"
	weapon_desc = "Charge up a burst shot. Max charge shoots a 12-round burst."
    break;
                        
    case "vs_issue":
	weapon_index = 31
	weapon_name = "VERY STANDARD ISSUE"
	weapon_desc = "Rifle."
    break;
                        
    case "s_scope":
	weapon_index = 32
	weapon_name = "SUPER SCOPE"
	weapon_desc = "High damage. Holding down left click charges a shot, but you can't move while charging."
    break;
                        
    case "vortex":
	weapon_index = 33
	weapon_name = "VORTEX GUN"
	weapon_desc = "Shoot four sprays of wavy bullets."
    break;
                        
    case "c_control":
	weapon_index = 34
	weapon_name = "CROWD CONTROL"
	weapon_desc = "Shoot steeply angled shots that bounce off the road."
    break;
                        
    case "ak_spray":
	weapon_index = 35
	weapon_name = "AKIMBO SPRAYERS"
	weapon_desc = "Shoot semi-automatic bursts. Quickly shoot to combo into a super spray."
    break;
                        
    case "cube":
	weapon_index = 36
	weapon_name = "CUBE"
	weapon_desc = "Shoot seven bullets at once in a cube formation."
    break;
                        
    case "m400":
	weapon_index = 37
	weapon_name = "M400"
	weapon_desc = "Charge shot. Max charge shoots a flak bullet."
    break;
                        
    case "u_burst":
	weapon_index = 38
	weapon_name = "ULTRA BURST"
	weapon_desc = "Charge up a burst shot. Max charge shoots a 20-round burst."
    break;
                        
    case "ats_issue":
	weapon_index = 39
	weapon_name = "ALMOST TOO STANDARD ISSUE"
	weapon_desc = "Rifle."
    break;
                        
    case "l_rifle":
	weapon_index = 40
	weapon_name = "LIVING RIFLE"
	weapon_desc = "High damage. Passively charge damage that is added to your next shot."
    break;
                        
    case "fury":
	weapon_index = 41
	weapon_name = "FURY BULLETS"
	weapon_desc = "Create a storm of bullets."
    break;
                        
    case "dc_control":
	weapon_index = 42
	weapon_name = "DOUBLE CROWD CONTROL"
	weapon_desc = "Shoot two steeply angled bullets that bounce at once."
    break;
                        
    case "ak_shot":
	weapon_index = 43
	weapon_name = "AKIMBO SHOTTYS"
	weapon_desc = "Shoot semi-automatic bursts. Quickly shoot to combo into a super shot."
    break;
                        
    case "circle":
	weapon_index = 44
	weapon_name = "CIRCLE"
	weapon_desc = "Shoot a circle of bullets that bounce off other bullet circles."
    break;
                        
    case "mblood":
	weapon_index = 45
	weapon_name = "MBL00D"
	weapon_desc = "Charge shot. Max charge shoots a bullet that heals you if it kills an enemy. Take triple damage."
    break;
                        
    case "tempo":
	weapon_index = 46
	weapon_name = "TEMP00"
	weapon_desc = "Shoot bullets when you flash for extra damage. Failing to do so will make you deal less damage for the wave."
    break;
                        
    case "h_burst":
	weapon_index = 47
	weapon_name = "HYPER BURST"
	weapon_desc = "Charge up a burst shot. Infinite charge, infinite burst."
    break;
                        
    case "storm_burst":
	weapon_index = 48
	weapon_name = "STORM BURST"
	weapon_desc = "Semi-automatic. Click to create bullets that shoot a 3-round burst."
    break;
                        
    case "tms_rifle":
	weapon_index = 49
	weapon_name = "THE MOST STANDARDIZED RIFLE"
	weapon_desc = "Rifle."
    break;
                        
    case "momentum":
	weapon_index = 50
	weapon_name = "MOMENTUM RIFLE"
	weapon_desc = "Shoot bullets. Can only shoot once bullet at once."
    break;
                        
    case "the_pro":
	weapon_index = 51
	weapon_name = "THE PROFESSIONAL"
	weapon_desc = "Heavy, super scope, living, it's every sniper in one!"
    break;
                        
    case "risk":
	weapon_index = 52
	weapon_name = "RISK RIFLE"
	weapon_desc = "Shoot extremely powerful bullets. Missing damages you."
    break;
                        
    case "smart":
	weapon_index = 53
	weapon_name = "SMART RIFLE"
	weapon_desc = "Shoot bullets that auto aim at the nearest enemy."
    break;
                        
    case "spirit":
	weapon_index = 54
	weapon_name = "SPIRIT BULLETS"
	weapon_desc = "Create bullets on top of every enemy. Extremely low damage."
    break;
                        
    case "rotate":
	weapon_index = 55
	weapon_name = "ROTATOR"
	weapon_desc = "Shoot bouncy bullets extremely fast."
    break;
                        
    case "predictor":
	weapon_index = 56
	weapon_name = "PREDICTOR"
	weapon_desc = "Shoot bullets on a constant angle."
    break;
                        
    case "ak_grenade":
	weapon_index = 57
	weapon_name = "AKIMBO GRENADE LAUNCHERS"
	weapon_desc = "Shoot semi-automatic grenades."
    break;
                        
    case "my_little":
	weapon_index = 58
	weapon_name = "MY LITTLE FRIENDS"
	weapon_desc = "Shoot a 2-round burst, click to fire. When under 25% HP, deal extra damage."
    break;
                        
    case "powerhouse":
	weapon_index = 59
	weapon_name = "POWERHOUSE"
	weapon_desc = "Shoot up to ten bullets at once. Bullet amount is based on your charge, and your charge increases every wave or every 15 seconds. Taking damage resets charge."
    break;
						
	case "infinite_gun":
	weapon_index = 60
	weapon_name = "INFINITY GUN"
	weapon_desc = "Shoot five bullets at once. Every third bullet that damages an enemy causes you to shoot another bullet."
    break;
	
	//Spirit of Despair
	case "bolt":
	weapon_index = 0
	weapon_name = "SPIRIT BOLT"
	weapon_desc = "Shoot a regular bullet."
    break;
	
	case "bolt_s":
	weapon_index = 1
	weapon_name = "SPIRIT BOLT SPEED"
	weapon_desc = "Shoot a regular bullet with boosted shot speed."
    break;
	
	case "bolt_a":
	weapon_index = 2
	weapon_name = "SPIRIT BOLT ACCURACY"
	weapon_desc = "Shoot a regular bullet with boosted accuracy."
    break;
}


#endregion
