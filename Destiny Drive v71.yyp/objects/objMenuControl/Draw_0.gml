draw_sprite(sprBottomGradient, 0, 0, room_height - 18)

if global.menu = "start"
{
draw_set_halign(fa_left)
draw_text_colour(2, room_height - 13, string_hash_to_newline("alpha v" + string(global.changelog_arr[0])), c_white, c_white, c_white, c_white, 1)
draw_set_halign(fa_center)
draw_set_halign(fa_left)
draw_text_colour(room_width - 80, room_height - 13, "Aaron P.", c_white, c_white, c_white, c_white, 1)
draw_set_halign(fa_center)
}

if global.menu = "challenges"
{
draw_set_colour(c_white)
draw_set_halign(fa_left)

		if global.challenge > 0
		{
		draw_sprite(sprChallengePicture, global.challenge - 1, 150, 40)
		}
		
    switch(global.challenge)
    {
    case 0:
    draw_text_ext(10, 200, string_hash_to_newline("Select a challenge!"), 12, 270)
    break;
    case 1:
    draw_text_ext(10, 200, string_hash_to_newline("WIMP: Get 3 HP."), 12, 270)
    break;
    case 2:
    draw_text_ext(10, 200, string_hash_to_newline("LOYALTY: You cannot change weapons."), 12, 270)
    break;
    case 3:
    draw_text_ext(10, 200, string_hash_to_newline("GAUNTLET: Get 60 HP, you can't get any more."), 12, 270)
    break;
    case 4:
    draw_text_ext(10, 200, string_hash_to_newline("HEALTH LEAK: Get 20 HP the first wave, then 19, then 18, etc."), 12, 270)
    break;
    case 5:
    draw_text_ext(10, 200, string_hash_to_newline("BOOM DUDE: Get 6 guided rockets, reload when you're out of rockets."), 12, 270)
    break;
    case 6:
    draw_text_ext(10, 200, string_hash_to_newline("GOLDEN VEINS: Get 500 coins and a golden pistol. Enemies take gold instead of HP. If you run out of gold, you lose."), 12, 270)
    break;
    case 7:
    draw_text_ext(10, 200, string_hash_to_newline("PACIFIST: You can't shoot, beat waves over time."), 12, 270)
    break;
    }
draw_set_halign(fa_center)
draw_set_colour(c_black)
}

