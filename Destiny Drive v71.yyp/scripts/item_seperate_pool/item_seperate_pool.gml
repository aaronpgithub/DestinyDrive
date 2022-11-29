function item_seperate_pool() {
	ds_list_clear(shop_item_pool)
	ds_list_clear(overlap_item_pool)
	ds_list_clear(boss_item_pool)

	ds_list_copy(shop_item_pool, global.item_pool)

#region deleting specific items from shop pool
	//s_p_del = shop pool delete
	s_p_del(0)						//Acid Flask
	s_p_del(4)						//Panic Button
	s_p_del(5)						//Sugar
	s_p_del(8)						//Fragile Spirit
	s_p_del(9)						//Adrenaline
	s_p_del(14)						//Heli Turret
	s_p_del(16)						//Screamer
	s_p_del(18)						//Big Buckshot
	s_p_del(19)						//Chili
	s_p_del(22)						//Cigar
	s_p_del(30)						//Relic of Pip
	s_p_del(31)						//Relic of Spice
	s_p_del(32)						//Relic of Dyna Mike
	s_p_del(35)						//Training Bullets
	s_p_del(36)						//Thorn Bullets
	s_p_del(37)						//Relic of Turf
	s_p_del(38)						//Heavy Barrel
	s_p_del(39)						//Greasy Bullets
	s_p_del(42)						//Cake
	s_p_del(44)						//Skill Bullets
	s_p_del(45)						//Rage Potion
	s_p_del(49)						//Super Pong
	s_p_del(52)						//Brave Spirit
	s_p_del(60)						//Developer's Curse
	s_p_del(61)						//Developer's Dream
	s_p_del(63)						//The Big Hurt
	s_p_del(75)						//Relic of Dastardly Devil
	s_p_del(89)						//Gum
	s_p_del(92)						//Pikum
	s_p_del(93)						//Unicorn Horn
	s_p_del(97)						//Ruby Ring
	s_p_del(98)						//Emerald Ring
	s_p_del(99)						//Sapphire Ring
	s_p_del(100)					//Beehive
	s_p_del(102)					//The Hit List
	s_p_del(106)					//Steroids
	s_p_del(107)					//Mystery Meat
	s_p_del(111)					//Your Soul
	s_p_del(113)					//Firey Gunpowder
	s_p_del(115)					//Ale
	s_p_del(116)					//Scattershot
	s_p_del(117)					//Duplishot
	s_p_del(120)					//Flippy
	s_p_del(125)					//Snow Idol
	s_p_del(129)					//Serpent's Kiss
	s_p_del(131)					//Thunderfinger++
	s_p_del(133)					//Icy Touch
	s_p_del(134)					//Snake Charm
	s_p_del(135)					//Blood Powered Nanocomputation
	s_p_del(139)					//Lil' Pup
	s_p_del(146)					//Book of Mathematics
	s_p_del(147)					//Apple
	s_p_del(154)					//Tech Bullets
	s_p_del(163)					//Relic of Noodle
	s_p_del(166)					//Pasta
	s_p_del(170)					//Bullet Blade
	s_p_del(175)					//Ghost Bullets
	s_p_del(179)					//Robot Bullets
	s_p_del(181)					//Emergency Robot
	s_p_del(183)					//Hellstone
	s_p_del(184)					//Angry Bullets
	s_p_del(185)					//Wavy Bullets
	s_p_del(190)					//Wonky Bullets
	s_p_del(193)					//Vomit
	s_p_del(195)					//Brick
	s_p_del(196)					//Virus
	s_p_del(197)					//Glass Shard
	s_p_del(199)					//Jet Bullets
#endregion

#region adding overlap items to boss pool
	//b_p_add = boss pool add
	b_p_add(1)						//Scales
	b_p_add(6)						//Bag of Wind
	b_p_add(11)						//Clover
	b_p_add(34)						//Broken Glasses
	b_p_add(62)						//Bull's Eye
	b_p_add(66)						//Essence of Stupidity
	b_p_add(67)						//Essence of Patience
	b_p_add(69)						//Clarity Pill
	b_p_add(79)						//Philosopher's Eye
	b_p_add(83)						//A Good Meal
	b_p_add(84)						//Granola
	b_p_add(85)						//Potato Chips
	b_p_add(104)					//Toggle Trigger
	b_p_add(114)					//Banana
	b_p_add(123)					//Silly Text
	b_p_add(130)					//Glamour Muscle
	b_p_add(132)					//Skin Shield
	b_p_add(136)					//Cracked Gemstone
	b_p_add(142)					//Tonic
	b_p_add(144)					//Upset Stomach
	b_p_add(156)					//Essence of Indecision
	b_p_add(172)					//Planet Bullets
	b_p_add(173)					//Kind Parasite
	b_p_add(176)					//Fat
	b_p_add(192)					//Bloody Coin
#endregion

	//FInding items that dont exist in either the shop or overlap pool and adding them to the boss pool
	for(var item_pool_len = 0; item_pool_len < ds_list_size(global.item_pool); item_pool_len++) {
		if ds_list_find_index(shop_item_pool, ds_list_find_value(global.item_pool, item_pool_len)) = -1
		or ds_list_find_index(overlap_item_pool, ds_list_find_value(global.item_pool, item_pool_len)) != -1 {
			ds_list_add(boss_item_pool, ds_list_find_value(global.item_pool, item_pool_len))
		}
	}





}
