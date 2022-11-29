function shop_string_set() {
	//what are the shop strings?
	//These can be the gambling machine, purchase text, and entrance text.
	global.purchase_text_amt = 2
	global.hover_text_amt = 2

	switch(global.level)
	{
	case "wasteland":
	global.shop_string_arr[0, 0] = "Hey man, welcome to my shop!" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "Buy something, will ya?"
	global.shop_string_arr[1, 1] = "Wanna buy something?"
	global.shop_string_arr[1, 2] = "I hope you find something you want!"

	//purchase
	global.shop_string_arr[2, 0] = "Hey, thanks for the money!"
	global.shop_string_arr[2, 1] = "Thank you for your purchase!"
	global.shop_string_arr[2, 2] = "I hope you put that to good use!"

	//gambling machine
	global.shop_string_arr[3, 0] = "Gamble your money away with the gambling machine!"
	break;



	case "swamp":
	global.shop_string_arr[0, 0] = "Bek" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "Mmmm"
	global.shop_string_arr[1, 1] = "Pop"
	global.shop_string_arr[1, 2] = "Ek"

	//purchase
	global.shop_string_arr[2, 0] = "Ged."
	global.shop_string_arr[2, 1] = "Wep!"
	global.shop_string_arr[2, 2] = "Ge no!"

	//gambling machine
	global.shop_string_arr[3, 0] = "Gamb"
	break;



	case "forest":
	global.shop_string_arr[0, 0] = "Hey dude, buy something or whatever." //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "Yeah, I'm like, the last of my species."
	global.shop_string_arr[1, 1] = "Do you like my feathers?"
	global.shop_string_arr[1, 2] = "Dude, I'm so tired."

	//purchase
	global.shop_string_arr[2, 0] = "Thanks, dude."
	global.shop_string_arr[2, 1] = "Cool, I guess."
	global.shop_string_arr[2, 2] = "I don't really need your money."

	//gambling machine
	global.shop_string_arr[3, 0] = "Use the gambling machine, if you want."
	break;



	case "volcano":
	global.shop_string_arr[0, 0] = "COUGH! Sorry man, got ashes in my throat." //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "Dude, I got a family to feed! Pay up!"
	global.shop_string_arr[1, 1] = "It's kinda cold today, huh?"
	global.shop_string_arr[1, 2] = "Buy something or beat it!"

	//purchase
	global.shop_string_arr[2, 0] = "Hey, throw in an extra 20 and I'll show you what's under my hood."
	global.shop_string_arr[2, 1] = "Aw HELL yeah!"
	global.shop_string_arr[2, 2] = "Aw, you're the BEST dude!"

	//gambling machine
	global.shop_string_arr[3, 0] = "Hey, I bet you'll win if you use the gambling machine!"
	break;



	case "snow":
	global.shop_string_arr[0, 0] = "Hey, it's me again!" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "Buy something, will ya?"
	global.shop_string_arr[1, 1] = "Wanna buy something?"
	global.shop_string_arr[1, 2] = "I hope you find something you want!"

	//purchase
	global.shop_string_arr[2, 0] = "Hey, thanks for the money!"
	global.shop_string_arr[2, 1] = "Thank you for your purchase!"
	global.shop_string_arr[2, 2] = "I hope you put that to good use!"

	//gambling machine
	global.shop_string_arr[3, 0] = "Gamble your money away with the gambling machine!"
	break;



	case "city":
	global.shop_string_arr[0, 0] = "WHAT'S HAPPENING IN THIS CITY!?!?" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "JUST DON'T HURT ME, PLEASE!"
	global.shop_string_arr[1, 1] = "AAAAAAAAAAAH!"
	global.shop_string_arr[1, 2] = "!!!"

	//purchase
	global.shop_string_arr[2, 0] = "TAKE IT FOR FREE, I DON'T CARE!"
	global.shop_string_arr[2, 1] = "OH GOD, JUST DON'T KILL ME!"
	global.shop_string_arr[2, 2] = "YOU'RE KILLING EVERYTHING BUT YOU DON'T KILL ME?!?!"

	//gambling machine
	global.shop_string_arr[3, 0] = "JUST TAKE THAT DAMN GAMBLING MACHINE, I DON'T CARE!"
	break;

	case "ocean":
	global.shop_string_arr[0, 0] = "WHAT'S HAPPENING IN THIS CITY!?!?" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "JUST DON'T HURT ME, PLEASE!"
	global.shop_string_arr[1, 1] = "AAAAAAAAAAAH!"
	global.shop_string_arr[1, 2] = "!!!"

	//purchase
	global.shop_string_arr[2, 0] = "TAKE IT FOR FREE, I DON'T CARE!"
	global.shop_string_arr[2, 1] = "OH GOD, JUST DON'T KILL ME!"
	global.shop_string_arr[2, 2] = "YOU'RE KILLING EVERYTHING BUT YOU DON'T KILL ME?!?!"

	//gambling machine
	global.shop_string_arr[3, 0] = "JUST TAKE THAT DAMN GAMBLING MACHINE, I DON'T CARE!"
	break;

	case "temple":
	global.shop_string_arr[0, 0] = "WHAT'S HAPPENING IN THIS CITY!?!?" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "JUST DON'T HURT ME, PLEASE!"
	global.shop_string_arr[1, 1] = "AAAAAAAAAAAH!"
	global.shop_string_arr[1, 2] = "!!!"

	//purchase
	global.shop_string_arr[2, 0] = "TAKE IT FOR FREE, I DON'T CARE!"
	global.shop_string_arr[2, 1] = "OH GOD, JUST DON'T KILL ME!"
	global.shop_string_arr[2, 2] = "YOU'RE KILLING EVERYTHING BUT YOU DON'T KILL ME?!?!"

	//gambling machine
	global.shop_string_arr[3, 0] = "JUST TAKE THAT DAMN GAMBLING MACHINE, I DON'T CARE!"
	break;

	case "edge":
	global.shop_string_arr[0, 0] = "HE CALLS FOR A VESSEL!" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "1"
	global.shop_string_arr[1, 1] = "2"
	global.shop_string_arr[1, 2] = "3"

	//purchase
	global.shop_string_arr[2, 0] = "1"
	global.shop_string_arr[2, 1] = "2"
	global.shop_string_arr[2, 2] = "3"

	//gambling machine
	global.shop_string_arr[3, 0] = "1"
	break;



	case "hell":
	global.shop_string_arr[0, 0] = "Hello, puny mortal..." //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "Give us blood, give us flesh..."
	global.shop_string_arr[1, 1] = "Pay with your blood..."
	global.shop_string_arr[1, 2] = "Sell us your soul..."

	//purchase
	global.shop_string_arr[2, 0] = "Our need for pain and suffering is unquenched..."
	global.shop_string_arr[2, 1] = "..."
	global.shop_string_arr[2, 2] = "..."

	//gambling machine
	global.shop_string_arr[3, 0] = "Will you sin on this land?"
	break;



	case "killroom":
	global.shop_string_arr[0, 0] = "HELLO CONTESTANT" //entrance text

	//after stopping hovering over a button
	global.shop_string_arr[1, 0] = "PLEASE TAKE YOUR FREE EQUIPMENT"
	global.shop_string_arr[1, 1] = "CONGRATS, YOU'RE HALFWAY DONE"
	global.shop_string_arr[1, 2] = "GOOD LUCK CONTESTANT"

	//purchase
	global.shop_string_arr[2, 0] = "THANK YOU FOR USING KillRoom EQUIPMENT"
	global.shop_string_arr[2, 1] = "TAKE ALL THE EQUIPMENT YOU NEED"
	global.shop_string_arr[2, 2] = "NICE CHOICE"

	//gambling machine
	global.shop_string_arr[3, 0] = "GAMBLING IS LEGAL, USE AS YOU WISH"
	break;
	}



}
